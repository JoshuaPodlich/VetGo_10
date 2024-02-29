package Spring20232.VetGo.service;

import Spring20232.VetGo.model.*;
import Spring20232.VetGo.repository.*;
import com.amazonaws.services.alexaforbusiness.model.AlreadyExistsException;
import com.amazonaws.services.alexaforbusiness.model.NotFoundException;
import com.amazonaws.services.fms.model.InvalidOperationException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.node.ArrayNode;
import com.fasterxml.jackson.databind.node.ObjectNode;
import jakarta.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

@Service
public class ScreeningService {

    @Autowired
    private UserRepository userRepository;
    @Autowired
    private ScreeningQuestionRepository questionRepository;
    @Autowired
    private ScreeningOptionRepository optionRepository;
    @Autowired
    private ScreeningResultRepository resultRepository;
    @Autowired
    private PetRepository petRepository;
    @Autowired
    private ScreeningSessionRepository screeningSessionRepository;
    @Autowired
    private ScreeningSessionAnsweredOptionRepository screeningSessionAnsweredOptionRepository;
    @Autowired
    private ObjectMapper objectMapper;

    private static long DOG_ROOT_QUESTION = 1; // Other Pet types would have their own, most likely as an enum in the future.

    public ScreeningSession startNewSession(Long userId, Long petId) {
        User user = userRepository.findById(userId)
                .orElseThrow(() -> new NotFoundException("User not found."));
        Pet pet = petRepository.findById(petId)
                .orElseThrow(()-> new NotFoundException("Pet not found."));

        ScreeningSession session = new ScreeningSession();
        session.setUser(user);
        session.setPet(pet);
        session.setStartTime(LocalDateTime.now());
        session.setCompleted(false);

        return screeningSessionRepository.save(session);
    }

    @Transactional
    public void completeSession(Long sessionId, ScreeningResult result) {
        ScreeningSession session = screeningSessionRepository.findById(sessionId).
                orElseThrow(() -> new NotFoundException("Session not found."));

        session.setResult(result);
        session.setEndTime(LocalDateTime.now());
        session.setCompleted(true);
    }

    public ScreeningQuestion getDogsRootQuestion() {
        return questionRepository.findById(DOG_ROOT_QUESTION)
                .orElseThrow(() -> new NotFoundException("Question not found."));
    }

    @Transactional
    public ScreeningOption processOption(Long optionId, Long sessionId) {
        ScreeningSession session = screeningSessionRepository.findById(sessionId)
                .orElseThrow(() -> new RuntimeException("Session not found"));

        ScreeningOption option = optionRepository.findById(optionId)
                .orElseThrow(() -> new NotFoundException("Option not found."));

        // If an option is changed, by default, set it to not completed and no result.
        session.setCompleted(false);
        session.setResult(null);

        ScreeningQuestion currentQuestion = option.getQuestion();

        // Find the index of the current question's option in the session's answered options.
        int currentIndex = -1;
        List<ScreeningSessionAnsweredOption> answeredOptions = screeningSessionAnsweredOptionRepository.findByScreeningSession(session);
        for (int i = 0; i < answeredOptions.size(); i++) {
            if (answeredOptions.get(i).getOption().getQuestion().equals(currentQuestion)) {
                currentIndex = i;
                break;
            }
        }

        if (currentIndex != -1) {
            // Remove all options selected after the current question's option.
            List<ScreeningSessionAnsweredOption> toBeRemoved = new ArrayList<>(answeredOptions.subList(currentIndex, answeredOptions.size()));
            screeningSessionAnsweredOptionRepository.deleteAll(toBeRemoved);
        }

        // Add or update the current question's option.
        ScreeningSessionAnsweredOption newAnsweredOption = new ScreeningSessionAnsweredOption();
        newAnsweredOption.setSession(session);
        newAnsweredOption.setOption(option);
        screeningSessionAnsweredOptionRepository.save(newAnsweredOption);

        return option;
    }

    public ScreeningQuestion getQuestion(Long optionId) {
        ScreeningOption option = optionRepository.findById(optionId)
                .orElseThrow(() -> new NotFoundException("Option not found."));
        ScreeningQuestion question = option.getQuestion();

        if (question == null) {
            throw new NotFoundException("Question not found.");
        }

        return question;
    }

    public ScreeningQuestion getNextQuestion(Long optionId) {
        ScreeningOption option = optionRepository.findById(optionId)
                .orElseThrow(() -> new NotFoundException("Option not found."));
        ScreeningQuestion nextQuestion = option.getNextQuestion();

        if (nextQuestion == null) {
            throw new NotFoundException("Next question not found.");
        }

        return option.getNextQuestion();
    }

    public ObjectNode createScreeningObjectNode(ScreeningQuestion question) {
        ObjectNode questionNode = objectMapper.createObjectNode();
        questionNode.put("questionId", question.getId());
        questionNode.put("questionText", question.getQuestionText());

        if (question.getOptions() == null || question.getOptions().isEmpty()) {
            throw new InvalidOperationException("The question's options do not exist.");
        }

        ArrayNode optionsArray = questionNode.putArray("options");
        for (ScreeningOption option : question.getOptions()) {
            ObjectNode optionNode = objectMapper.createObjectNode();
            optionNode.put("optionId", option.getId());
            optionNode.put("optionText", option.getOptionText());
            optionNode.put("isTerminating", option.isTerminating());
            //optionNode.put("result", option.getResult());
            if (option.getNextQuestion() != null) {
                optionNode.put("nextQuestionId", option.getNextQuestion().getId());
            }
            optionsArray.add(optionNode);
        }

        return questionNode;
    }

    public ObjectNode createSessionObjectNode(Long sessionId) {
        ScreeningSession session = screeningSessionRepository.findById(sessionId)
                .orElseThrow(() -> new IllegalStateException("Session with id " + sessionId + " does not exist."));
        ObjectNode sessionNode = objectMapper.createObjectNode();

        sessionNode.put("sessionId", session.getId());
        sessionNode.put("startTime", session.getStartTime().toString());
        sessionNode.put("endTime", session.getEndTime() != null ? session.getEndTime().toString() : "null");
        sessionNode.put("isCompleted", session.isCompleted());

        ArrayNode answeredArray = sessionNode.putArray("answeredDetails");
        for (ScreeningSessionAnsweredOption answeredOption : screeningSessionAnsweredOptionRepository.findByScreeningSession(session)) {
            ScreeningQuestion question = answeredOption.getOption().getQuestion();
            ObjectNode questionNode = createScreeningObjectNode(question);

            questionNode.put("chosenOption", answeredOption.getId());

            answeredArray.add(questionNode);
        }

        if (session.isCompleted()) {
            if (session.getResult() != null) {
                ObjectNode resultNode = objectMapper.createObjectNode();
                resultNode.put("id", session.getResult().getId());
                resultNode.put("resultPriority", session.getResult().getResultPriority().toString());
                resultNode.put("doNext", session.getResult().getDoNext());
                resultNode.put("firstAidAdvice", session.getResult().getFirstAidAdvice());
                resultNode.put("problem", session.getResult().getProblem());

                sessionNode.set("result", resultNode);
            }
            else {
                throw new IllegalStateException("Session is completed, but has no result.");
            }
        }
        // If the session is not completed, get the last option's next question for the Owner to answer.
        else {
            ScreeningSessionAnsweredOption option  = screeningSessionAnsweredOptionRepository.findByScreeningSession(session).get(screeningSessionAnsweredOptionRepository.findByScreeningSession(session).size() - 1);
            ScreeningQuestion question = option.getOption().getNextQuestion();
            ObjectNode questionNode = createScreeningObjectNode(question);
            answeredArray.add(questionNode);
        }

        return sessionNode;
    }

    @Transactional
    public void deleteSession(Long sessionId) {
        screeningSessionRepository.deleteById(sessionId);
    }

    public ArrayNode getAllSessions(Long userId) {
        List<ScreeningSession> sessions = screeningSessionRepository.findAllByUserId(userId);
        ArrayNode sessionsArrayNode = objectMapper.createArrayNode();

        for (ScreeningSession session : sessions) {
            ObjectNode sessionNode = objectMapper.createObjectNode();
            sessionNode.put("id", session.getId());
            sessionNode.put("startedAt", session.getStartTime().toString());
            sessionNode.put("completedAt", session.getEndTime() != null ? session.getEndTime().toString() : "null");
            sessionNode.put("petName", session.getPet().getName());
            //sessionNode.put("petType", session.getPet().getPetImage()); // Once images are fixed, this will be implemented.

            sessionsArrayNode.add(sessionNode);
        }

        return sessionsArrayNode;
    }
}


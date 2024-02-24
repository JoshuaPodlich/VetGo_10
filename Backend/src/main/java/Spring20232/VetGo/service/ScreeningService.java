package Spring20232.VetGo.service;

import Spring20232.VetGo.model.*;
import Spring20232.VetGo.repository.*;
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
    private ObjectMapper objectMapper;

    private static long DOG_ROOT_QUESTION = 1;
    private static long CAT_ROOT_QUESTION = 2;

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

        session.getAnsweredOptions().add(option);

        return option;
    }

    public ScreeningQuestion getQuestion(Long optionId) {
        ScreeningOption option = optionRepository.findById(optionId)
                .orElseThrow(() -> new NotFoundException("Option not found."));
        ScreeningQuestion question = option.getQuestion();

        if (question == null) {
            throw new NotFoundException("Question not found.");
        }

        return option.getQuestion();
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

    @Transactional
    public void editAnsweredOption(Long sessionId, Long optionIdToEdit) {
        ScreeningSession session = screeningSessionRepository.findById(sessionId)
                .orElseThrow(() -> new IllegalStateException("Session with id " + sessionId + " does not exist."));

        List<ScreeningOption> answeredOptions = session.getAnsweredOptions();
        int indexToEdit = -1;

        // Find the index of the option to edit
        for (int i = 0; i < answeredOptions.size(); i++) {
            if (answeredOptions.get(i).getId().equals(optionIdToEdit)) {
                indexToEdit = i;
                break;
            }
        }

        if (indexToEdit != -1) {
            // Remove all subsequent answers
            List<ScreeningOption> optionsToRemove = new ArrayList<>(answeredOptions.subList(indexToEdit + 1, answeredOptions.size()));
            answeredOptions.removeAll(optionsToRemove);
            session.setAnsweredOptions(answeredOptions);
            screeningSessionRepository.save(session);
        } else {
            throw new IllegalStateException("Option with id " + optionIdToEdit + " not found in the session.");
        }
    }
}


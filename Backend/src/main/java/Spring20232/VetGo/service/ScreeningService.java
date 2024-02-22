package Spring20232.VetGo.service;

import Spring20232.VetGo.model.Pet;
import Spring20232.VetGo.model.ScreeningOption;
import Spring20232.VetGo.model.ScreeningQuestion;
import Spring20232.VetGo.repository.PetRepository;
import Spring20232.VetGo.repository.ScreeningOptionRepository;
import Spring20232.VetGo.repository.ScreeningQuestionRepository;
import com.amazonaws.services.alexaforbusiness.model.NotFoundException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ScreeningService {

    @Autowired
    private ScreeningQuestionRepository questionRepository;
    @Autowired
    private ScreeningOptionRepository optionRepository;
    @Autowired
    private PetRepository petRepository;

    private static long DOG_ROOT_QUESTION = 1;
    private static long CAT_ROOT_QUESTION = 2;

    public ScreeningQuestion getDogsRootQuestion() {
        return questionRepository.findById(DOG_ROOT_QUESTION)
                .orElseThrow(() -> new NotFoundException("Question not found."));
    }

    public ScreeningOption getOption(Long optionId) {
        ScreeningOption option = optionRepository.findById(optionId)
                .orElseThrow(() -> new NotFoundException("Option not found."));
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
}


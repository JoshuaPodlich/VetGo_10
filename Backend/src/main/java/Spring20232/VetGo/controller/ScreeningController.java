package Spring20232.VetGo.controller;

import Spring20232.VetGo.model.ScreeningOption;
import Spring20232.VetGo.model.ScreeningQuestion;
import Spring20232.VetGo.service.ScreeningService;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.node.ArrayNode;
import com.fasterxml.jackson.databind.node.ObjectNode;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("screening")
public class ScreeningController {
    @Autowired
    private ScreeningService screeningService;
    @Autowired
    private ObjectMapper objectMapper;

    @GetMapping("/get/root-question/dog")
    public ResponseEntity<?> getDogsRootQuestion() {
        try {
            ScreeningQuestion question = screeningService.getDogsRootQuestion();
            // TODO: Put the below as SreeningService method instead.
            ObjectNode questionNode = objectMapper.createObjectNode();
            questionNode.put("questionId", question.getId());
            questionNode.put("questionText", question.getQuestionText());

            ArrayNode optionsArray = questionNode.putArray("options");
            for (ScreeningOption option : question.getOptions()) {
                ObjectNode optionNode = objectMapper.createObjectNode();
                optionNode.put("optionId", option.getId());
                optionNode.put("optionText", option.getOptionText());
                optionNode.put("isTerminating", option.isTerminating());
                optionNode.put("result", option.getResult());
                if (option.getNextQuestion() != null) {
                    optionNode.put("nextQuestionId", option.getNextQuestion().getId());
                }
                optionsArray.add(optionNode);
            }

            return ResponseEntity.ok(questionNode);
        }
        catch (Exception e) {
            return ResponseEntity.status(HttpStatus.BAD_REQUEST).body(e.getMessage());
        }
    }

    @GetMapping("/get/question/{optionId}")
    public ResponseEntity<?> getQuestionByOption(@PathVariable Long optionId) {
        try{
            ScreeningQuestion question = screeningService.getQuestion(optionId);
            return ResponseEntity.ok(question);
        }
        catch (Exception e) {
            return ResponseEntity.status(HttpStatus.BAD_REQUEST).body(e.getMessage());
        }
    }

    @GetMapping("get/process-option/{optionId}")
    public ResponseEntity<?> processOption(@PathVariable Long optionId) {
        try {
            ScreeningOption option = screeningService.getOption(optionId);
            if (option.isTerminating()) {
                return ResponseEntity.ok(option.getResult());
            }
            else {
                ScreeningQuestion nextQuestion = screeningService.getNextQuestion(optionId);
                return ResponseEntity.ok(nextQuestion);
            }
        }
        catch (Exception e) {
            return ResponseEntity.status(HttpStatus.BAD_REQUEST).body(e.getMessage());
        }
    }
}

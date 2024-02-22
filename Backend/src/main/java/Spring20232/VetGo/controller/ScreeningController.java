package Spring20232.VetGo.controller;

import Spring20232.VetGo.model.ScreeningOption;
import Spring20232.VetGo.model.ScreeningQuestion;
import Spring20232.VetGo.service.ScreeningService;
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

    @GetMapping("/get/root-question/dog")
    public ResponseEntity<?> getDogsRootQuestion() {
        try {
            ScreeningQuestion question = screeningService.getDogsRootQuestion();
            ObjectNode questionNode = screeningService.createScreeningObjectNode(question);

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

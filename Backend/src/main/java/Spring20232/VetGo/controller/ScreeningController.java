package Spring20232.VetGo.controller;

import Spring20232.VetGo.model.ScreeningOption;
import Spring20232.VetGo.model.ScreeningQuestion;
import Spring20232.VetGo.model.ScreeningSession;
import Spring20232.VetGo.service.ScreeningService;
import com.fasterxml.jackson.databind.node.ObjectNode;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("screening")
public class ScreeningController {
    @Autowired
    private ScreeningService screeningService;

    @PostMapping("/start-session/user/{userId}/pet/{petId}")
    public ResponseEntity<?> startScreeningSession(@PathVariable Long userId,
                                                   @PathVariable Long petId) {
        try {
            ScreeningSession session = screeningService.startNewSession(userId, petId);
            return ResponseEntity.ok(session.getId());
        } catch (Exception e) {
            return ResponseEntity.status(HttpStatus.BAD_REQUEST).body(e.getMessage());
        }
    }

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

    @PostMapping("/session/{sessionId}/process-option/{optionId}")
    public ResponseEntity<?> processOption(@PathVariable Long sessionId,
                                           @PathVariable Long optionId) {
        try {
            ScreeningOption option = screeningService.processOption(optionId, sessionId);
            if (option.isTerminating()) {
                screeningService.completeSession(sessionId, option.getResult());
                return ResponseEntity.ok(option.getResult());
            }
            else {
                ScreeningQuestion nextQuestion = screeningService.getNextQuestion(optionId);
                ObjectNode questionNode = screeningService.createScreeningObjectNode(nextQuestion);
                return ResponseEntity.ok(questionNode);
            }
        }
        catch (Exception e) {
            return ResponseEntity.status(HttpStatus.BAD_REQUEST).body(e.getMessage());
        }
    }

    @PutMapping("/session/{sessionId}/change-option/{optionId}")
    public ResponseEntity<?> editOption(@PathVariable Long sessionId,
                                        @PathVariable Long optionId) {
        try {
            screeningService.editAnsweredOption(sessionId, optionId);
            return ResponseEntity.ok().body("Option and subsequent answers removed. Please continue your session.");
        } catch (Exception e) {
            return ResponseEntity.status(HttpStatus.BAD_REQUEST).body(e.getMessage());
        }
    }

}

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
            ObjectNode questionNode = screeningService.createScreeningObjectNode(question);
            return ResponseEntity.ok(questionNode);
        }
        catch (Exception e) {
            return ResponseEntity.status(HttpStatus.BAD_REQUEST).body(e.getMessage());
        }
    }

    @GetMapping("/session/{sessionId}/view")
    public ResponseEntity<?> viewSession(@PathVariable Long sessionId) {
        try {
            ObjectNode sessionNode = screeningService.createSessionObjectNode(sessionId);
            return ResponseEntity.ok(sessionNode);
        } catch (Exception e) {
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

    @DeleteMapping("/session/{sessionId}/delete")
    public ResponseEntity<?> deleteSession(@PathVariable Long sessionId) {
        try {
            screeningService.deleteSession(sessionId);
            return ResponseEntity.status(HttpStatus.OK).body("Session with id " + sessionId + " deleted.");
        }
        catch (Exception e) {
            return ResponseEntity.status(HttpStatus.BAD_REQUEST).body(e.getMessage());
        }

    }

    @GetMapping("/session/get-all/{userId}")
    public ResponseEntity<?> getAllSessions(@PathVariable Long userId) {
        try {
            return ResponseEntity.status(HttpStatus.OK).body(screeningService.getAllSessions(userId));
        }
        catch (Exception e) {
            return ResponseEntity.status(HttpStatus.BAD_REQUEST).body(e.getMessage());
        }
    }

}

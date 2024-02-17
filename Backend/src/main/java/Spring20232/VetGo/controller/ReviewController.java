package Spring20232.VetGo.controller;

import Spring20232.VetGo.model.*;
import Spring20232.VetGo.repository.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;
import java.util.UUID;

@RestController
@RequestMapping("review")
public class ReviewController {

    @Autowired
    private ReviewRepository reviewRepository;
    @Autowired
    private AppointmentRepository appointmentRepository;
    @Autowired
    private UserRepository userRepository;
    @Autowired
    private VetRepository vetRepository;
    private TagRepository tagRepository;

    @GetMapping(value = "/all")
    public ResponseEntity<List<Review>> getAllReview() {
        List<Review> reviews = new ArrayList<>();
        reviewRepository.findAll().forEach(reviews::add);
        return ResponseEntity.status(HttpStatus.OK).body(reviews);
    }

    @GetMapping(value = "/id/{rid}")
    public ResponseEntity<Review> getReview(@PathVariable Long rid) {
        return ResponseEntity.status(HttpStatus.OK).body(reviewRepository.findById(rid).orElse(null));
    }

    @GetMapping(value = "/appointment/{oid}")
    public ResponseEntity<Appointment> getAppointment(@PathVariable Long oid) {
        return ResponseEntity.status(HttpStatus.OK).body(reviewRepository.findById(oid).orElse(null).getAppointment());
    }

    @PostMapping(value = "/create/{aid}")
    public ResponseEntity<?> addReview(@RequestBody Review review,
                                       @PathVariable("aid") Long aid) {

        Appointment appointment = appointmentRepository.findById(aid).orElse(null);
        User user = userRepository.findById(review.getReviewee()).orElse(null);

        if (user == null) {
            return ResponseEntity.status(HttpStatus.NOT_FOUND).body("User does not exist.");
        }

        Optional<Vet> vetOptional = vetRepository.findById(user.getId());

        if (vetOptional.isEmpty())
            return ResponseEntity.status(HttpStatus.NOT_FOUND).body("Unable to find reviewee (vet) in database");

        Vet vet = vetOptional.get();

        if (appointment == null)
            return ResponseEntity.status(HttpStatus.NOT_FOUND).body("Unable to find appointment in database");


        Tag tag = new Tag();
        tag.setAttentive(review.getTags().getAttentive());
        tag.setCleanTidy(review.getTags().getCleanTidy());
        tag.setPunctual(review.getTags().getPunctual());
        tag.setKnowledgeable(review.getTags().getKnowledgeable());
        tag.setExcellentService(review.getTags().getExcellentService());
        tag.setGreatConversation(review.getTags().getGreatConversation());

        tagRepository.save(tag);
        Review newReview = new Review(review.getReviewer(), review.getReviewee(), review.getDescription(), review.getRating(), appointment, tag);

        reviewRepository.save(newReview);
        appointment.addReview(newReview);
        appointmentRepository.save(appointment);

        int numReviewed = vet.getNumReviews() + 1;
        double rating = (vet.getAverageRating() * vet.getNumReviews() + review.getRating()) / numReviewed;
        vet.setNumReviews(numReviewed);
        vet.setAverageRating(rating);

        Tag userTag = vet.getTags();
        userTag.addAttentive(tag.getAttentive());
        userTag.addCleanTidy(tag.getCleanTidy());
        userTag.addPunctual(tag.getPunctual());
        userTag.addKnowledgeable(tag.getKnowledgeable());
        userTag.addExcellentService(tag.getExcellentService());
        userTag.addGreatConversation(tag.getGreatConversation());
        tagRepository.save(userTag);

        vet.setTags(userTag);
        userRepository.save(vet);

        return ResponseEntity.status(HttpStatus.OK).body(appointment);
    }

    @PutMapping(value = "/update/{rid}")
    public ResponseEntity<?> updateReview(@RequestBody Review updatedReview, @PathVariable("rid") Long rid) {

        if (reviewRepository.findById(rid).isEmpty())
            return ResponseEntity.status(HttpStatus.NOT_FOUND).body("Unable to find review in database");

        reviewRepository.findById(rid)
                .map(review -> {
                    review.setReviewer(updatedReview.getReviewer());
                    review.setReviewee(updatedReview.getReviewee());
                    review.setDescription(updatedReview.getDescription());
                    review.setRating(updatedReview.getRating());
                    review.setDescription(updatedReview.getDescription());

                    return reviewRepository.save(review);
                }).orElseGet(() -> {
                    return reviewRepository.save(updatedReview);
                });

        return ResponseEntity.status(HttpStatus.OK).body(reviewRepository.findById(rid));
    }

    @DeleteMapping(value = "/delete/all")
    public ResponseEntity<String> deleteAllReview() {
        reviewRepository.deleteAll();
        return ResponseEntity.status(HttpStatus.NO_CONTENT).body("Deleted all review");
    }

    @DeleteMapping(value = "/delete/{rid}")
    public ResponseEntity<String> deleteReview(@PathVariable("rid") Long rid) {
        Review review = reviewRepository.findById(rid).orElse(null);
        if (review == null)
            return ResponseEntity.status(HttpStatus.NOT_FOUND).body("Unable to find review in database");

        reviewRepository.delete(review);
        return ResponseEntity.status(HttpStatus.NO_CONTENT).body("Deleted review");
    }
}

package Spring20232.VetGo.repository;

import Spring20232.VetGo.model.ScreeningSession;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

public interface ScreeningSessionRepository extends JpaRepository<ScreeningSession, Long> {
    // Efficient query optimization using an option ID associated with a session.
    @Query("SELECT COUNT(o) > 0 FROM ScreeningSession s JOIN s.answeredOptions o WHERE s.id = :sessionId AND o.id = :optionId")
    boolean isOptionAlreadyAnsweredInSession(@Param("sessionId") Long sessionId, @Param("optionId") Long optionId);
}

package Spring20232.VetGo.repository;

import Spring20232.VetGo.model.ScreeningSession;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;

public interface ScreeningSessionRepository extends JpaRepository<ScreeningSession, Long> {

    List<ScreeningSession> findAllByUserId(Long userId);
}

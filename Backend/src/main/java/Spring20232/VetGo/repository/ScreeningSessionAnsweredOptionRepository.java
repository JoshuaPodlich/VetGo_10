package Spring20232.VetGo.repository;

import Spring20232.VetGo.model.ScreeningSession;
import Spring20232.VetGo.model.ScreeningSessionAnsweredOption;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ScreeningSessionAnsweredOptionRepository extends JpaRepository<ScreeningSessionAnsweredOption, Long> {
    List<ScreeningSessionAnsweredOption> findByScreeningSession(ScreeningSession screeningSession);
}

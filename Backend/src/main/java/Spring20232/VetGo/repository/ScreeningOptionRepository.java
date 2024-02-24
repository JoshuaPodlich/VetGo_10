package Spring20232.VetGo.repository;

import Spring20232.VetGo.model.ScreeningOption;
import Spring20232.VetGo.model.ScreeningResult;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ScreeningOptionRepository extends JpaRepository<ScreeningOption, Long> {
    ScreeningResult findByResult(Long resultId);
}

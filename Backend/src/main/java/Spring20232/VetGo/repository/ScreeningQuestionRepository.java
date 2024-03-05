package Spring20232.VetGo.repository;

import Spring20232.VetGo.model.ScreeningQuestion;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ScreeningQuestionRepository extends JpaRepository<ScreeningQuestion, Long> {

}

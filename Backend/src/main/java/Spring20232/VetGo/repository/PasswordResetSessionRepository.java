package Spring20232.VetGo.repository;

import Spring20232.VetGo.model.PasswordResetSession;
import Spring20232.VetGo.model.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface PasswordResetSessionRepository extends JpaRepository<PasswordResetSession, Long> {
    PasswordResetSession findByUserAndSessionValid(User user, boolean sessionValid);
}

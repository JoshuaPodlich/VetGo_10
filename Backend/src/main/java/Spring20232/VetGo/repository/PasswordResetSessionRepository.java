package Spring20232.VetGo.repository;

import Spring20232.VetGo.model.PasswordResetSession;
import Spring20232.VetGo.model.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface PasswordResetSessionRepository extends JpaRepository<PasswordResetSession, Long> {
    PasswordResetSession findByUserAndSessionValid(User user, boolean sessionValid);

    List<PasswordResetSession> findAllByUserAndSessionValid(User user, boolean sessionValid);
}

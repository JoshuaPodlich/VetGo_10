package Spring20232.VetGo.repository;

import Spring20232.VetGo.model.PasswordResetToken;
import Spring20232.VetGo.model.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface PasswordResetTokenRepository extends JpaRepository<PasswordResetToken, Long> {
    List<PasswordResetToken> findAllByUserAndTokenValid(User user, boolean tokenValid);

    @Query("SELECT p FROM PasswordResetToken p WHERE p.user = :user ORDER BY p.creationDate DESC LIMIT 1")
    PasswordResetToken findByUser(User user);
}

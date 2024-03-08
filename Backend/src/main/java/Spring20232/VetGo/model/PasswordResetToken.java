package Spring20232.VetGo.model;

import jakarta.persistence.Entity;
import jakarta.persistence.ManyToOne;
import org.springframework.cglib.core.Local;

import java.time.LocalDateTime;

@Entity
public class PasswordResetToken extends BaseEntity {
    private String token;

    @ManyToOne
    private User user;

    private LocalDateTime expirationDate;

    private LocalDateTime creationDate;

    private boolean tokenValid;

    public PasswordResetToken() {

    }

    public PasswordResetToken(String token, User user, LocalDateTime expirationDate, LocalDateTime creationDate, boolean tokenValid) {
        this.token = token;
        this.user = user;
        this.expirationDate = expirationDate;
        this.creationDate = creationDate;
        this.tokenValid = tokenValid;
    }

    public String getToken() {
        return token;
    }

    public void setToken(String token) {
        this.token = token;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public LocalDateTime getExpirationDate() {
        return expirationDate;
    }

    public void setExpirationDate(LocalDateTime expirationDate) {
        this.expirationDate = expirationDate;
    }

    public LocalDateTime getCreationDate() {
        return creationDate;
    }

    public void setCreationDate(LocalDateTime creationDate) {
        this.creationDate = creationDate;
    }

    public boolean isTokenValid() {
        return tokenValid;
    }

    public void setTokenValid(boolean tokenValid) {
        this.tokenValid = tokenValid;
    }
}

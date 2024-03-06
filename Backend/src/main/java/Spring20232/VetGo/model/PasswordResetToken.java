package Spring20232.VetGo.model;

import jakarta.persistence.Entity;
import jakarta.persistence.ManyToOne;

import java.time.LocalDateTime;

@Entity
public class PasswordResetToken extends BaseEntity {
    private String token;

    @ManyToOne
    private User user;

    private LocalDateTime expirationDate;

    private boolean isTokenValid;

    public PasswordResetToken() {

    }

    public PasswordResetToken(String token, User user, LocalDateTime expirationDate, boolean isTokenValid) {
        this.token = token;
        this.user = user;
        this.expirationDate = expirationDate;
        this.isTokenValid = isTokenValid;
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

    public boolean isTokenValid() {
        return isTokenValid;
    }

    public void setTokenValid(boolean tokenValid) {
        isTokenValid = tokenValid;
    }
}

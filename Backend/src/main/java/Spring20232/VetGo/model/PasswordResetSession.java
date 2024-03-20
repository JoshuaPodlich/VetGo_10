package Spring20232.VetGo.model;

import jakarta.persistence.Entity;
import jakarta.persistence.ManyToOne;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.time.LocalDateTime;

@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
@Entity
public class PasswordResetSession extends BaseEntity {
    private String sessionToken;

    @ManyToOne
    private User user;

    private LocalDateTime expirationDate;

    private LocalDateTime creationDate;

    private boolean sessionValid;
}

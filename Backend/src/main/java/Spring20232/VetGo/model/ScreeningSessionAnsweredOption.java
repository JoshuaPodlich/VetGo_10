package Spring20232.VetGo.model;

import jakarta.persistence.*;

import java.util.List;

@Entity
@Table(name = "screening_session_answered_options")
public class ScreeningSessionAnsweredOption extends BaseEntity {

    @ManyToOne
    @JoinColumn(name = "session_id", nullable = false)
    private ScreeningSession screeningSession;

    @ManyToOne
    @JoinColumn(name = "option_id", nullable = false)
    private ScreeningOption screeningOption;

    public ScreeningSessionAnsweredOption() {
    }

    public ScreeningSessionAnsweredOption(ScreeningSession session, ScreeningOption option) {
        this.screeningSession = session;
        this.screeningOption = option;
    }

    public ScreeningSession getSession() {
        return screeningSession;
    }

    public void setSession(ScreeningSession session) {
        this.screeningSession = session;
    }

    public ScreeningOption getOption() {
        return screeningOption;
    }

    public void setOption(ScreeningOption option) {
        this.screeningOption = option;
    }
}


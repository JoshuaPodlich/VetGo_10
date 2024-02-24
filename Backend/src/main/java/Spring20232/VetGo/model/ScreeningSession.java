package Spring20232.VetGo.model;

import jakarta.persistence.*;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

@Entity
public class ScreeningSession extends BaseEntity {
    @ManyToOne
    private User user;
    @OneToOne
    private Pet pet;
    @OneToMany(cascade = CascadeType.ALL)
    private List<ScreeningOption> answeredOptions = new ArrayList<>();
    @OneToOne
    private ScreeningResult result;
    private LocalDateTime startTime;
    private LocalDateTime endTime;
    private boolean isCompleted;

    public ScreeningSession() {
    }

    public ScreeningSession(User user, Pet pet, List<ScreeningOption> answeredOptions, ScreeningResult result, LocalDateTime startTime,
                            LocalDateTime endTime, boolean isCompleted) {
        this.user = user;
        this.pet = pet;
        this.answeredOptions = answeredOptions;
        this.result = result;
        this.startTime = startTime;
        this.endTime = endTime;
        this.isCompleted = isCompleted;
    }


    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public Pet getPet() {
        return pet;
    }

    public void setPet(Pet pet) {
        this.pet = pet;
    }

    public List<ScreeningOption> getAnsweredOptions() {
        return answeredOptions;
    }

    public void setAnsweredOptions(List<ScreeningOption> answeredOptions) {
        this.answeredOptions = answeredOptions;
    }

    public ScreeningResult getResult() {
        return result;
    }

    public void setResult(ScreeningResult result) {
        this.result = result;
    }

    public LocalDateTime getStartTime() {
        return startTime;
    }

    public void setStartTime(LocalDateTime startTime) {
        this.startTime = startTime;
    }

    public LocalDateTime getEndTime() {
        return endTime;
    }

    public void setEndTime(LocalDateTime endTime) {
        this.endTime = endTime;
    }

    public boolean isCompleted() {
        return isCompleted;
    }

    public void setCompleted(boolean completed) {
        isCompleted = completed;
    }
}

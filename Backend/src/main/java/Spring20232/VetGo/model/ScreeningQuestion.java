package Spring20232.VetGo.model;

import jakarta.persistence.*;

import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name = "screening_questions")
public class ScreeningQuestion extends BaseEntity{
    private String questionText;

    @OneToMany(mappedBy = "question", cascade = CascadeType.ALL, orphanRemoval = true)
    private List<ScreeningOption> options = new ArrayList<>();

    public ScreeningQuestion() {
    }

    public ScreeningQuestion(String questionText) {
        this.questionText = questionText;
    }

    public String getQuestionText() {
        return questionText;
    }

    public void setQuestionText(String questionText) {
        this.questionText = questionText;
    }

    public List<ScreeningOption> getOptions() {
        return options;
    }

    public void setOptions(List<ScreeningOption> options) {
        this.options = options;
    }
}

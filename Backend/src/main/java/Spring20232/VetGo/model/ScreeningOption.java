package Spring20232.VetGo.model;

import jakarta.persistence.*;

@Entity
@Table(name = "screening_options")
public class ScreeningOption extends BaseEntity{
    @ManyToOne
    @JoinColumn(name = "question_id", nullable = false)
    private ScreeningQuestion question;

    private String optionText;

    @ManyToOne
    @JoinColumn(name = "next_question_id")
    private ScreeningQuestion nextQuestion;

    // Whether the option leads to a terminal question.
    private boolean isTerminating;
    private String result;

    public ScreeningOption() {
    }

    public ScreeningOption(ScreeningQuestion question, String optionText, ScreeningQuestion nextQuestion,
                           boolean isTerminating, String result) {
        this.question = question;
        this.optionText = optionText;
        this.nextQuestion = nextQuestion;
        this.isTerminating = isTerminating;
        this.result = result;
    }

    public ScreeningQuestion getQuestion() {
        return question;
    }

    public void setQuestion(ScreeningQuestion question) {
        this.question = question;
    }

    public String getOptionText() {
        return optionText;
    }

    public void setOptionText(String optionText) {
        this.optionText = optionText;
    }

    public ScreeningQuestion getNextQuestion() {
        return nextQuestion;
    }

    public void setNextQuestion(ScreeningQuestion nextQuestion) {
        this.nextQuestion = nextQuestion;
    }

    public boolean isTerminating() {
        return isTerminating;
    }

    public void setTerminating(boolean terminating) {
        isTerminating = terminating;
    }

    public String getResult() {
        return result;
    }

    public void setResult(String result) {
        this.result = result;
    }
}

package Spring20232.VetGo.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Table;

@Entity
@Table(name = "screening_results")
public class ScreeningResult extends BaseEntity {
    public RESULT_PRIORITY resultPriority;
    @Column(columnDefinition = "TEXT")
    public String doNext;
    @Column(columnDefinition = "TEXT")
    public String firstAidAdvice;
    @Column(columnDefinition = "TEXT")
    public String problem;

    public enum RESULT_PRIORITY {LOW, MIDDLE, HIGH, URGENT}

    public ScreeningResult() {
    }

    public ScreeningResult(RESULT_PRIORITY resultPriority, String doNext, String firstAidAdvice, String problem) {
        this.resultPriority = resultPriority;
        this.doNext = doNext;
        this.firstAidAdvice = firstAidAdvice;
        this.problem = problem;
    }

    public RESULT_PRIORITY getResultPriority() {
        return resultPriority;
    }

    public void setResultPriority(RESULT_PRIORITY resultPriority) {
        this.resultPriority = resultPriority;
    }

    public String getDoNext() {
        return doNext;
    }

    public void setDoNext(String doNext) {
        this.doNext = doNext;
    }

    public String getFirstAidAdvice() {
        return firstAidAdvice;
    }

    public void setFirstAidAdvice(String firstAidAdvice) {
        this.firstAidAdvice = firstAidAdvice;
    }

    public String getProblem() {
        return problem;
    }

    public void setProblem(String problem) {
        this.problem = problem;
    }
}

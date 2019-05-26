
package subMy;


public class Quizres {
    
    private int id;
    private String category, score;

    public Quizres() {
    }

    public Quizres(int id, String category, String score) {
        this.id = id;
        this.category = category;
        this.score = score;
    }

    public int getId() {
        return id;
    }
    
    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public void setId(int examId) {
        this.id = id;
    }

    public String getScore() {
        return score;
    }

    public void setScore(String tMarks) {
        this.score = score;
    }
    
}

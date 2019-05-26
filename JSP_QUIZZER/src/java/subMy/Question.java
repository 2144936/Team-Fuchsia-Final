package subMy;


public class Question {
    private int id;
    private String question,answer,category,points;

    public Question() {
    }

    public Question(int id, String question, String answer, String category, String points) {
        this.id = id;
        this.question = question;
        this.answer = answer;
        this.category = category;
        this.points = points;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getQuestion() {
        return question;
    }

    public void setQuestion(String question) {
        this.question = question;
    }

    public String answer() {
        return answer;
    }

    public String getCategory() {
        return category;
    }
    
    
}

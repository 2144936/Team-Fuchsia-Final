package subMy;


public class Question {
    private int id, points;
    private String question,answer,category;

    public Question() {
    }

    public Question(int id, String question, String answer, String category, int points) {
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

    public String getAnswer() {
        return answer;
    }
    
    public int getPoints(){
        return points;
    }


    public String getCategory() {
        return category;
    }
    
    
}

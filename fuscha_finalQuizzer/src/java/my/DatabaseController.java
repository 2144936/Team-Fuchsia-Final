/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package my;

/**
 *
 * @author Agusdan, Arnel C.
 */

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import static java.lang.System.out;
import java.time.LocalDate;
import java.time.LocalTime;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import subMy.Question;
import subMy.Quizres;

public final class DatabaseController {
    private Connection conn;
   
    public DatabaseController() throws ClassNotFoundException, SQLException {
         connectDatabase();
    }
    
    public void connectDatabase() throws ClassNotFoundException, SQLException{
        Class.forName("com.mysql.jdbc.Driver");
        conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/quizzer_fuscha","root","");
    }
    
    public int getAccountId(String x){
        int str=0;
        PreparedStatement pstm;
        try {
            pstm = conn.prepareStatement("Select * from user where username = ?");
            pstm.setString(1,x);
            ResultSet rs=pstm.executeQuery();
            while(rs.next()){
                str=rs.getInt("id");
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return str;
    }
    
    public boolean accountVerify(String x, String y) throws SQLException{
        boolean status=false;
        String sql="SELECT * FROM user where username = ?";
        PreparedStatement pstm=conn.prepareStatement(sql);
        pstm.setString(1,x);
        ResultSet rs=pstm.executeQuery();
        String uname;
        String pass;
        while(rs.next()){
            uname=rs.getString("username");
            pass=rs.getString("password");
            if( pass.equals(y)){
                return true;
            } 
        }
        return false;
    }
    
    public void addQuestion(String category,String question,String answer, String points){
        try {
            String sql = "insert into questions(`category`,`question`,`answer`,`points`) values(?,?,?,?);";
            PreparedStatement pstm=conn.prepareStatement(sql);
            pstm.setString(1,category);
            pstm.setString(2,question);
            pstm.setString(3,answer);
            pstm.setString(4,points);
            pstm.executeUpdate();
            pstm.close();
        } catch (NumberFormatException | SQLException e) {
            out.println(e);
        }
    }
    
    public ArrayList questions(String category){
        ArrayList list=new ArrayList();
        try {
            String sql="Select * from questions where category=? ORDER BY RAND()";
            PreparedStatement pstm=conn.prepareStatement(sql);
            pstm.setString(1,category);
            ResultSet rs=pstm.executeQuery();
            Question question;
            while(rs.next()){
               question = new Question(
                       rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getInt(5)); 
               list.add(question);
            }
            pstm.close();
        } catch (SQLException ex) {
            System.out.println(ex);
        }
        return list;
    }
    
    public int totalPoints(String y){
     int x=0;
     try{
         PreparedStatement pstm=conn.prepareStatement("Select sum(points) as 'tPoints' from questions where category = ?");
         pstm.setString(1,y);
         ResultSet rs=pstm.executeQuery();
         while(rs.next()){
             x=rs.getInt(1);
         }
         pstm.close();
     }catch(SQLException e){
         System.out.println(e);
     }
     return x;
    }
    
    public int startQuiz(String category,String type){
        int examId=0;
        try {
            String sql="INSERT into quiz_logger(category,type) VALUES(?,?)";
            PreparedStatement pstm=conn.prepareStatement(sql);
            pstm.setString(1,category);
            pstm.setString(2,type);
            pstm.executeUpdate();
            pstm.close();
            examId=lastQuizId();
        } catch (SQLException e) {
            System.out.println(e);
        }
        return examId;
    }
    
    public int lastQuizId(){
        int id=0;
         try {
            String sql="Select * from quiz_logger";
            PreparedStatement pstm=conn.prepareStatement(sql);
            ResultSet rs=pstm.executeQuery();
            while(rs.next()){
               id=rs.getInt(1);
            }
            pstm.close();
        } catch (SQLException e) {
            System.out.println(e);
        }
        return id;
    }
    
    public void insertQuiz(int x, int y){
        try {
            String sql = "Update quiz_logger set score = ? where id = ?;";
            //String sql = "update quiz_logger SET category = ?, score = ? where id = ?;";
            PreparedStatement pstm=conn.prepareStatement(sql);
            pstm.setInt(1,x);
            pstm.setInt(2,y);
            pstm.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    } 
    
    public Quizres getResult(int id){
        Quizres quiz=null;
        try {
            PreparedStatement pstm=conn.prepareStatement("select * from quiz_logger where id=?");
            pstm.setInt(1, id);
            ResultSet rs=pstm.executeQuery();
            while(rs.next()){
                quiz=new Quizres(rs.getInt(1), rs.getString(2), rs.getString(3));  
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return quiz;
        
    }

}

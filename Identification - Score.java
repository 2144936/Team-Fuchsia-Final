/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author asus
 */
public class MidtermsIdenChecker extends HttpServlet {

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        PrintWriter pw = response.getWriter();

        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/quizzes", "root", "password");
            
            int score = 0;
            String[] idenAns = new String[10];
            String[] userIdenAns = request.getParameterValues("idenAns"); 

            
            // ================================| IDENTIFICATION |================================
            String query = "SELECT type, answer FROM questions "
                    + "WHERE term='midterms' AND type='identification'";     
            PreparedStatement ps = conn.prepareStatement(query);
            ResultSet rs = ps.executeQuery();
                        
            int ctr = 0;
            while(rs.next()) {
                idenAns[ctr] = rs.getString("answer");
                ctr++;
            }        

            for(int i = 0; i < userIdenAns.length; i++ ) {
                String[] data;
                if(userIdenAns[i].equals("")) {
                    userIdenAns[i] = "NO ANSWER";
                }
                if(idenAns[i].contains(" or ")) {
                    data = idenAns[i].split(" or ");
                    if(userIdenAns[i].equalsIgnoreCase(data[0])|| userIdenAns[i].equalsIgnoreCase(data[1])) {
                        score++;
                    }
                } else if(userIdenAns[i].equalsIgnoreCase(idenAns[i])) {
                    score++;
                } 
            }


            pw.println("Score: " +score);
            pw.close();
            
        }catch(Exception e) { 
            e.printStackTrace();
        }
    }

}

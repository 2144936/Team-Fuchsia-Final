<%-- 
    Document   : worker
    Created on : 05 24, 19, 7:09:02 PM
    Author     : Agusdan, Arnel C.
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="my.DatabaseController"%>
<jsp:useBean id="fuschia" class="my.DatabaseController" scope="page"/>
<%
if(request.getParameter("page").toString().equals("index")){
    if(fuschia.accountVerify(request.getParameter("username").toString(), request.getParameter("password").toString())){
        session.setAttribute("userStatus", "1");
        session.setAttribute("userId",fuschia.getAccountId(request.getParameter("username")));
        response.sendRedirect("../admin.jsp");

    }else{
        request.getSession().setAttribute("userStatus", "-1");
        response.sendRedirect("../index.jsp");
    }
}else if(request.getParameter("page").toString().equals("admin")){
        if(request.getParameter("key").toString().equals("addq")){
           fuschia.addQuestion(request.getParameter("category"),request.getParameter("question"),request.getParameter("answer"),
                   request.getParameter("points"));
           response.sendRedirect("../admin.jsp"); 
        }
}else if(request.getParameter("page").toString().equals("quiz")){
    if(request.getParameter("key").toString().equals("startquiz_HTTP")){
        String category=(request.getParameter("category"));
        String type = "Enumeration";
        int quizId=fuschia.startQuiz(category,type);
        session.setAttribute("quizId",quizId);
        session.setAttribute("quizStarted","1");
        response.sendRedirect("../quizzer.jsp?&category="+category);
    }else if(request.getParameter("key").toString().equals("startquiz_CSS")){
        String category=(request.getParameter("category"));
        String type = "Enumeration";
        int quizId=fuschia.startQuiz(category,type);
        session.setAttribute("quizId",quizId);
        session.setAttribute("quizStarted","1");
        response.sendRedirect("../quizzer.jsp?&category="+category);
    }else if(request.getParameter("key").toString().equals("startquiz_javascript")){
        String category=(request.getParameter("category"));
        String type = "Enumeration";
        int quizId=fuschia.startQuiz(category,type);
        session.setAttribute("quizId",quizId);
        session.setAttribute("quizStarted","1");
        response.sendRedirect("../quizzer.jsp?&category="+category);
    }else if(request.getParameter("key").toString().equals("submitted")){
        try{
            int size=Integer.parseInt(request.getParameter("size"));
            String category=(request.getParameter("category"));
            int id = Integer.parseInt(session.getAttribute("quizId").toString());
            session.removeAttribute("quizId");
            session.removeAttribute("quizStarted");
            int totalPoints = Integer.parseInt(request.getParameter("totalPoints"));
            int calPoints = totalPoints / 2;
            String result = "";
            int tPoints = 0;
            for(int i=0;i<size;i++){
                String cAnswer = request.getParameter("correctAnswer"+i);
                String question=request.getParameter("question"+i);
                String ans=request.getParameter("answer"+i);
                int questionWorth = Integer.parseInt(request.getParameter("questionPoint"+i));
                if(ans.equals(cAnswer)){
                    tPoints = tPoints + questionWorth;
                }
                if(tPoints>=calPoints){
                    result = "Passed";
                }else{
                    result = "Failed";
                }
                int qid=Integer.parseInt(request.getParameter("qid"+i)); 
                fuschia.insertQuiz(tPoints,id);
            }
                response.sendRedirect("../quizzer.jsp?&id="+id+"&showresult=1&totalPoints="+totalPoints+"&result="+result);
        }catch(Exception e){
            e.printStackTrace();
        }
  
    }else if(request.getParameter("key").toString().equals("review")){
        String category = request.getParameter("category");
        response.sendRedirect("../review.jsp?&category="+category);
    }
}else{
    
}
%>



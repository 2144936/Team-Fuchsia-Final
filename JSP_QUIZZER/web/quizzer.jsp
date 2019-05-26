<%-- 
    Document   : quizzer
    Created on : 05 26, 19, 9:36:28 PM
    Author     : Gigabyte
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<%@page import="subMy.Question"%>
<%@page import="subMy.Quizres"%>
<jsp:useBean id="fuschia" class="my.DatabaseController" scope="page"/>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Fuschia's Quiz</title>
    </head>
    <body>
        <div class="container">
            <div class="modal-body">
                <%
                if(session.getAttribute("examStarted")!=null){
                   if(session.getAttribute("examStarted").equals("1")){
                %>
                <form id="myform" action="important/worker.jsp">
                    <%
                    ArrayList list=fuschia.questions(request.getParameter("category"));
                    Question question;
                    String test = (request.getParameter("category"));
                    %>
                    <input type="hidden" name="size" value="<%=list.size()%>">
                    <input type="hidden" name="totalPoints" value="<%=fuschia.totalPoints(test)%>">
                    <%
                    for(int i=0;i<list.size();i++){
                        question=(Question)list.get(i);
                    %>
                    <div class="question-panel">
                        <div class="question" >
                            <label class="question-label"><%=i+1 %></label>
                            <%=question.getQuestion() %>
                        </div>
                        <div class="answer">
                            <input type="text" name="answer"></input>
                        </div>
                    </div>
                    <input type="hidden" name="question<%=i%>" value="<%=question.getQuestion()%>">
                    <input type="hidden" name="qid<%=i%>" value="<%=question.getId()%>">
                    <%
                    }
                    %>
                    <input type="hidden" name="page" value="quiz">
                    <input type="hidden" name="operation" value="submitted"> 
                    <input type="submit" class="btn add-btn" value="Done">
                </form>
                <%
                    }
                }
                if(request.getParameter("showresult")!=null){
                    if(request.getParameter("showresult").equals("1")){
                       Quizres result= fuschia.getResult(Integer.parseInt(request.getParameter("id")));
                %>
                <div class="panel" style="float: left;max-width: 900px">
                    <div class="title">Result</div>
                    <div class="profile">
                        <span class="tag">Quiz Category: </span><span class="val"><%=result.getCategory() %></span><br/>
                        <span class="tag">Score: </span><span class="val"><%=result.getScore() %></span><br/>
                    </div>
                    <p></p>
                    <p></p>
                    <p></p>
                    <p></p>
                    <p></p>
                </div>
                <%
                    }
                }
                %>
            </div>
        </div>
    </body>
</html>

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
        <link rel="stylesheet" type="text/css" href="resources/css/all.css"/>
        <link rel="stylesheet" type="text/css" href="resources/css/bootstrap.min.css"/>
        <link rel="stylesheet" type="text/css" href="resources/css/mdb.min.css"/>
        <link rel="stylesheet" type="text/css" href="resources/fontawesome/css/fontawesome.min.css"/>
        <script src="resources/js/jquery-3.3.1.slim.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="resources/js/bootstrap.min.js"></script>
    </head>
    <body>
        <div class="container">
            <%
            ArrayList list=fuschia.questions(request.getParameter("category"));
            Question question;
            String category = (request.getParameter("category"));
            %>
            <section class="my-5">
                <h2 class="h1-responsive font-weight-bold text-center my-5"><%=category%> Quiz Reviewer</h2>
                <p class="lead grey-text text-center w-responsive mx-auto mb-5"><i>"A language that doesn't affect the way you think about programming, is not worth knowing"</i>.</p>
            </section> 
            <div class="row">
                <div class="col-sm-4 mx-auto">
                    <div class="card">
                        <div class="card-body">
                            <input type="hidden" name="size" value="<%=list.size()%>">
                            <input type="hidden" name="totalPoints" value="<%=fuschia.totalPoints(category)%>">
                            <input type="hidden" name="category" value="<%=category%>">
                            <%
                            for(int i=0;i<list.size();i++){
                                question=(Question)list.get(i);
                            %>
                            <div class="question-panel">
                                <div class="question" >
                                    <p class="card-text"><%=i+1%>. <%=question.getQuestion() %></p>
                                </div>
                                <div class="form-group">
                                    <p class="card-text"><b>Correct Answer:</b><input type="text" class="form-control" placeholde="Answer" name="answer<%=i%>" value="<%=question.getAnswer()%>" disabled></input></p>
                                </div>
                            </div>
                            <%
                            }
                            %>
                            <a href="index.jsp" class="btn btn-outline-primary-light">Go back</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>

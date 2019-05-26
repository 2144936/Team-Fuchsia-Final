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
            if(session.getAttribute("quizStarted")!=null){
               if(session.getAttribute("quizStarted").equals("1")){
            %>
            <%
            ArrayList list=fuschia.questions(request.getParameter("category"));
            Question question;
            String category = (request.getParameter("category"));
            %>
            <section class="my-5">
                <h2 class="h1-responsive font-weight-bold text-center my-5">Quiz for <%=category%></h2>
                <p class="lead grey-text text-center w-responsive mx-auto mb-5"><i>"A language that doesn't affect the way you think about programming, is not worth knowing"</i>.</p>
            </section>   
            <div class="row">
                <div class="col-sm-4 mx-auto">
                    <div class="card">
                        <div class="card-body">
                            <form id="myform" action="important/worker.jsp">
                                <input type="hidden" name="size" value="<%=list.size()%>">
                                <input type="hidden" name="totalPoints" value="<%=fuschia.totalPoints(category)%>">
                                <input type="hidden" name="category" value="<%=category%>">
                                <%
                                for(int i=0;i<list.size();i++){
                                    question=(Question)list.get(i);
                                %>
                                <div class="question-panel">
                                    <p class="card-text"><%=i+1%>. <%=question.getQuestion() %></p>
                                    <div class="form-group">
                                        <input type="text" class="form-control" placeholde="Answer" name="answer<%=i%>"></input>
                                    </div>
                                </div>
                                <input type="hidden" name="question<%=i%>" value="<%=question.getQuestion()%>">
                                <input type="hidden" name="qid<%=i%>" value="<%=question.getId()%>">
                                <input type="hidden" name="correctAnswer<%=i%>" value="<%=question.getAnswer()%>">
                                <input type="hidden" name="questionPoint<%=i%>" value="<%=question.getPoints()%>">
                                <%
                                }
                                %>
                                <input type="hidden" name="page" value="quiz">
                                <input type="hidden" name="key" value="submitted">
                                <input class="btn btn-outline-primary-light" type="submit" value="Submit">
                            </form>
                        </div>
                    </div>
                </div>
                <%
                    }
                }
                if(request.getParameter("showresult")!=null){
                    if(request.getParameter("showresult").equals("1")){                        
                        String tPoints = (request.getParameter("totalPoints"));
                        String quizResult = (request.getParameter("result"));
                        Quizres result= fuschia.getResult(Integer.parseInt(request.getParameter("id")));
                %>
                <div class="panel">
                    <section class="my-5">
                        <h2 class="h1-responsive font-weight-bold text-center my-5">Result</h2>
                    </section>
                    <div class="row">
                        <div class="col-sm-4 mx-auto">
                            <div class="card">
                                <div class="card-body">
                                    <div class="result">
                                        <p class="card-text">Quiz Category: <%=result.getCategory()%></p>
                                        <p class="card-text">Score: <%=result.getScore()%>/<%=tPoints%></p>
                                        <p class="card-text">Result: <%=quizResult%></p>
                                        <div class="btn-group" role="group" aria-label="Basic example">
                                            <a href="index.jsp" class="btn btn-outline-primary-light mr-1">Go back</a>
                                            <form action="important/worker.jsp">
                                                <input type="hidden" name="page" value="quiz">
                                                <input type="hidden" name="key" value="review">
                                                <input type="hidden" name="category" value="<%=result.getCategory()%>">
                                                <input type="submit" class="btn btn-outline-primary-light" value="Review Quiz"></a>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <%
                    }
                }
                %>
            </div>
        </div>
    </body>
</html>

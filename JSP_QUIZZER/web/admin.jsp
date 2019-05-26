<%-- 
    Document   : admin
    Created on : 05 24, 19, 5:50:44 PM
    Author     : Agusdan, Arnel C.
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Fuschia || Admin Panel</title>
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
            <nav class="navbar navbar-light bg-light">
                <ul class="nav nav-tabs" id="myTab" role="tablist">
                    <li class="nav-item">
                      <a class="nav-link active" id="questions-tab" data-toggle="tab" href="#questions" role="tab" aria-controls="questions"
                        aria-selected="true">Questions</a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link" id="hays-tab" data-toggle="tab" href="#hays" role="tab" aria-controls="hays"
                        aria-selected="false">Hays naku</a>
                    </li>
                </ul>
            </nav>
            <div class="tab-content" id="myTabContent">
                <div class="tab-pane fade show active" id="questions" role="tabpanel" aria-labelledby="home-tab">
                    <form action="important/worker.jsp">
                        <br><br>
                        <div class="form-group">
                            <label for="inputCategory">Category</label>
                            <select name="category" class="form-control form-control-sm">
                                 <option value="HTTP">HTTP</option>
                                 <option value="CSS">CSS</option>
                                 <option value="Javascript">Javascript</option>
                            </select>
                        </div>
                        
                        <div class="form-group">
                            <label for="inputQuestion">Your Question:</label>
                            <input type="text" name="question" class="form-control" placeholder="Type your question here"><br>
                        </div>
                        
                        <div class="form-row">
                            <div class="form-group col-md-6">
                              <label for="inputEmail4">Correct Answer</label>
                              <input type="text" name="answer" class="form-control" id="inputEmail4" placeholder="Answer">
                            </div>
                            <div class="form-group col-md-6">
                              <label for="inputPoints">Points</label>
                              <input type="text" name="points" class="form-control" id="inputPassword4" placeholder="Points">
                            </div>
                        </div>
                        <input type="hidden" name="page" value="admin">
                        <input type="hidden" name="operation" value="addq">
                        <center><input type="submit" class="btn btn-light" value="Submit" name="submit"></center>
                    </form>
                </div>
                <div class="tab-pane fade" id="hays" role="tabpanel" aria-labelledby="hays-tab">
                    <br><br><br>
                    <b> under construction hehehehe, han dak kotkotien wun? :) </b>
                </div>
                <!-- <div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">Template.</div> -->
            </div>
        </div>
    </body>
</html>

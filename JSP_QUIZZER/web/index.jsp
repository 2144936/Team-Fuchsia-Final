<%-- 
    Document   : index
    Created on : 05 24, 19, 5:29:07 PM
    Author     : Agusdan, Arnel C.
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Fuschia's Homepage</title>        
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
                <a class="navbar-brand">
                  <img src="resources/images/admin.png" width="30" height="30" alt="admin_logo"><button type="button" class="btn" data-toggle="modal" data-target="#adminLogin">Admin Login</button>
                </a>
            </nav>
            <section class="my-5">
                <h2 class="h1-responsive font-weight-bold text-center my-5">Fuschia's Quizzer</h2>
                <p class="lead grey-text text-center w-responsive mx-auto mb-5"><i>"A language that doesn't affect the way you think about programming, is not worth knowing"</i>.</p>
                <div class="row"> 
                    <div class="col-sm-4">
                        <div class="card">
                            <div class="card-body">
                                <h5 class="card-title">HTTP</h5>
                                <p class="card-text">Test your knowledge in HTTP. HTTP Protocols/headers etc </p>
                                <form action="important/worker.jsp">
                                    <div>
                                        <input type="hidden" name="page" value="quiz">
                                        <input type="hidden" name="key" value="startquiz_HTTP">
                                        <input type="hidden" name="category" value="HTTP">
                                        <button type="submit" class="btn btn-primary">Take the Quiz</button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-4">
                        <div class="card">
                            <div class="card-body">
                                <h5 class="card-title">CSS</h5>
                                <p class="card-text">Test your knowledge and skills on CSS to see how much you know, or don't know,</p>
                                <form action="important/worker.jsp">
                                    <div>
                                        <input type="hidden" name="page" value="quiz">
                                        <input type="hidden" name="key" value="startquiz_CSS">
                                        <input type="hidden" name="category" value="CSS">
                                        <button type="submit" class="btn btn-primary">Take the Quiz</button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-4">
                        <div class="card">
                            <div class="card-body">
                                <h5 class="card-title">Javascript</h5>
                                <p class="card-text"> Our javascript quiz covers javascript fundamentals, advance concepts, array, DOM, and other topics.</p>
                                <form action="important/worker.jsp">
                                    <div>
                                        <input type="hidden" name="page" value="quiz">
                                        <input type="hidden" name="key" value="startquiz_javascript">
                                        <input type="hidden" name="category" value="Javascript">
                                        <button type="submit" class="btn btn-primary add-btn">Take the Quiz</button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </div>
        <div class="modal fade" id="adminLogin" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
        aria-hidden="true">
        <form method="POST" action="important/worker.jsp">
        <input type="hidden" name="page" value="index"> 
        <div class="modal-dialog" role="document">
          <div class="modal-content">
            <div class="modal-header text-center">
              <h4 class="modal-title w-100 font-weight-bold">Sign in</h4>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
            </div>
            <div class="modal-body mx-3">
              <div class="md-form mb-5">
                <i class="fas fa-user prefix"></i>
                <input type="text" name="username" id="user" class="form-control validate">
                <label data-error="wrong" data-success="right" for="defaultForm-email"></label>
              </div>

              <div class="md-form mb-4">
                  <i class="fas fa-lock prefix"></i>
                <input type="password" name="password" id="pass" class="form-control validate">
                <label data-error="wrong" data-success="right" for="defaultForm-pass"></label>
              </div>

            </div>
            <div class="modal-footer d-flex justify-content-center">
              <button class="btn btn-default">Login</button>
            </div>
          </div>
        </div>
        </form>
      </div>
    </body>
    
    <!-- Quiz -->
   
    <!--Quiz-->
    
    <!--Footer-->
    <!--<div class="modal-footer justify-content-center">
      <a type="button" class="btn btn-info">Next</a>
      <a type="button" class="btn btn-outline-info waves-effect" data-dismiss="modal">Cancel</a>
    </div>-->
</html>

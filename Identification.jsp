
<link href="style/logo.png" rel="icon">
  <link href="img/apple-touch-icon.png" rel="apple-touch-icon">

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>WTQuizzer</title>
  <meta name="description" content="website description" />
  <meta name="keywords" content="website keywords, website keywords" />
  <meta http-equiv="content-type" content="text/html; charset=windows-1252" />
  <link rel="stylesheet" type="text/css" href="style/style.css" title="style" />
  <link rel="stylesheet" type="text/css "href="css/style.css">
    <style>


      /* Next & previous buttons */
      .prev, .next {
        cursor: pointer;
        position: absolute;
        top: 50%;
        width: auto;
        padding: 16px;
        margin-top: -22px;
        color: white;
        font-weight: bold;
        font-size: 18px;
        transition: 0.6s ease;
        border-radius: 0 3px 3px 0;
      }

      /* Caption text */
      .text {
        color: #f2f2f2;
        font-size: 15px;
        padding: 8px 12px;
        position: absolute;
        bottom: 8px;
        width: 100%;
        text-align: center;
      }


      /* Fading animation */
      .fade {
        -webkit-animation-name: fade;
        -webkit-animation-duration: 1.5s;
        animation-name: fade;
        animation-duration: 1.5s;
      }

      @-webkit-keyframes fade {
        from {opacity: .4} 
        to {opacity: 1}
      }

      @keyframes fade {
        from {opacity: .4} 
        to {opacity: 1}
      }

      /* On smaller screens, decrease text size */
      @media only screen and (max-width: 300px) {
        .prev, .next,.text {font-size: 11px}
      }
      </style>
<!--James-->
</head>
<body>
   <div id="main">
    <div id="header">
      <div id="logo">
        <div id="logo_text">
          <!-- class="logo_colour", allows you to change the colour of the text -->
          <h1><a href="quizList.jsp">Web Systems and Technologies</a></h1>
          <h2>A Online Quiz</h2>
        </div>
      </div>
        
    <div id="site_content">
      <div id = "content">
        </div>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>  

<!DOCTYPE html>
<html>
    <head>
      <link href="style/logo.png" rel="icon">
      <link href="img/apple-touch-icon.png" rel="apple-touch-icon">
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <title>WTQuizzer</title>
    </head>
    <body style="background-image:url(style/bg.jpeg);background-size: auto auto; 
        background-repeat: no-repeat; 
        ">
        <sql:setDataSource var="db" driver="com.mysql.jdbc.Driver" 
                           url="jdbc:mysql://localhost:3306/quizzes" 
                           user="root" password="password"/>  

        <form method="POST" action="PrelimsIdenChecker"> 
            <!-- darryl -->
    
            <input type="button" value="Home" onclick="history.back()">  
             <h1>Identification</h1>            
            <sql:query dataSource="${db}" var="rs">
                SELECT description, answer FROM questions 
                WHERE term='prelims' AND type='identification';
            </sql:query> 
            <ol>
                <c:forEach var="questionList" items="${rs.rows}">
                    <li><c:out value="${questionList.description}"/></li>
                    <input type="text" name="idenAns"/>
                    <br/>
                </c:forEach>
            </ol>


          <Input type="submit" name="submitQuiz" value="Submit">
  
        </form>
    </body>
</html>

    <!-- Bootstrap core JavaScript -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Plugin JavaScript -->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom JavaScript for this theme -->
    <script src="js/scrolling-nav.js"></script>
</div>
</body>
</html>

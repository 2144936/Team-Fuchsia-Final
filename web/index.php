<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="bootstrap/css/all.css"/>
        <link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.css"/>
        <link rel="stylesheet" type="text/css" href="bootstrap/css/mdb.min.css"/>
        <link rel="stylesheet" type="text/css" href="bootstrap/css/fontawesome.css"/>
        <script src="resources/js/jquery.min.js"></script>
        <script src="bootstrap/js/bootstrap.min.js"></script>
        <script src="bootstrap/js/bootstrap.js"></script>
    </head>
    <body>

        <div class="container">
            <section class="my-5">

            <!-- Section heading -->
            <h2 class="h1-responsive font-weight-bold text-center my-5">Team Fuschia</h2>
            <!-- Section description -->
            <p class="lead grey-text text-center w-responsive mx-auto mb-5">It will help you to enhance your knowledge. Take the quiz to test your knowledge and learnings.</p>
            <div class="row">
            <div class="col-md-4 mb-md-0 mb-5">
                <div class="row">
                <div class="col-lg-2 col-md-3 col-2">
                    <!-- <i class="fas fa-bullhorn blue-text fa-2x"></i> -->
                </div>

                </div>
            </div>
            <div class="col-md-4 mb-md-0 mb-5">
                <div class="row">
                    <div class="col-lg-2 col-md-3 col-2">
                    </div>
                    <div class="col-lg-10 col-md-9 col-10">
                        <button type="button" class="btn btn-brown font-weight-bold view" id='1' name="qToggle">Take the Quiz</button>
                        <p class="grey-text">Learn more and explore more</p>
                    </div>
                </div>
            </div>
            </section>
            <div class="modal fade right" id="quiz" tabindex="-1" role="dialog" aria-labelledby="quizModalLabel"
                aria-hidden="true" data-backdrop="false">
                <div class="modal-dialog modal-notify modal-info" role="document">
                    <div class="modal-content" id="data">
                        
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>

<script>
$(document).ready(function(){
 
 function fetch_post_data(id)
 {
  $.ajax({
   url:"get.php",
   method:"POST",
   data:{id:id},
   success:function(data)
   {
    $('#quiz').modal('show');
    $('#data').html(data);
   }
  });
 }

 $(document).on('click', '.view', function(){
  var id = $(this).attr("id");
  fetch_post_data(id);
 });

 $(document).on('click', '.previous', function(){
  var id = $(this).attr("id");
  fetch_post_data(id);
 });

 $(document).on('click', '.next', function(){
  var id = $(this).attr("id");
  fetch_post_data(id);
 });
 
});
</script>
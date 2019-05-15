<?php
    include_once 'includes/dbConnect.php';
    $query = "select a.essay,a.enumeration,a.mutipleChoice,a.trueOrFalse,a.question,a.points,b.answer from questions a join answer b on a.id = b.question_id;";
    $result = mysqli_query($connect,$query);
    $fetched_result = mysqli_num_rows($result);
?>

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
            <p class="lead grey-text text-center w-responsive mx-auto mb-5">Lorem ipsum dolor sit amet, consectetur
            adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim
            veniam.</p>
            <div class="row">
            <div class="col-md-4 mb-md-0 mb-5">
                <div class="row">
                <div class="col-lg-2 col-md-3 col-2">
                    <!-- <i class="fas fa-bullhorn blue-text fa-2x"></i> -->
                </div>
                <div class="col-lg-10 col-md-9 col-10">
                <button type="button" class="btn btn-blue-grey font-weight-bold">Lessons</button>
                    <p class="grey-text">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor
                    incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.</p>
                </div>
                </div>
            </div>
            <div class="col-md-4 mb-md-0 mb-5">
                <div class="row">
                    <div class="col-lg-2 col-md-3 col-2">
                    </div>
                    <div class="col-lg-10 col-md-9 col-10">
                        <button type="button" class="btn btn-brown font-weight-bold" data-toggle="modal" data-target="#quiz">Take the Quiz</button>
                        <p class="grey-text">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor
                        incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.</p>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="row">
                    <div class="col-lg-2 col-md-3 col-2">
                    </div>
                    <div class="col-lg-10 col-md-9 col-10">
                        <button type="button" class="btn btn-mdb-color font-weight-bold">About Us</button>
                        <p class="grey-text">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor
                        incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.</p>
                    </div>
                </div>
            </div>
            </div>
            </section>
            <div class="modal fade right" id="quiz" tabindex="-1" role="dialog" aria-labelledby="quizModalLabel"
                aria-hidden="true" data-backdrop="false">
                <div class="modal-dialog modal-notify modal-info" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                                
                        <?php   
                            $counter = 0;
                            if($fetched_result > 0){
                                while ($row = mysqli_fetch_assoc($result)){
                                    $counter++;
                                    $essay = $row['essay'];
                                    $multi = $row['mutipleChoice'];
                                        echo '<p class="heading lead">Question #'.$counter.'</p>
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true" class="white-text">×</span>
                                        </button>
                                        </div>
                                        <div class="modal-body">
                                        <div class="text-center">';
                                    if($essay == '1'){
                                        //echo $row['question'];
                                        echo '
                                        <p>'.$row['question'].'</p>
                                        </div>
                                        <hr>
                                        <div class="md-form">
                                        <textarea type="text" id="essayAnswer" class="md-textarea form-control" rows="3"></textarea>
                                        </div>';
                                    }else if($multi == '1'){
                                        echo '
                                        <p>'.$row['question'].'</p>
                                        </div>
                                        <hr>
                                        <!-- Choices -->
                                        <p class="text-center">
                                        <strong>Choices: </strong>
                                        </p>
                                        <div class="form-check mb-4">
                                        <input class="form-check-input" name="group1" type="radio" id="radio-179" value="option1" checked>
                                        <label class="form-check-label" for="radio-179">1</label>
                                        </div>
                                        <div class="form-check mb-4">
                                        <input class="form-check-input" name="group1" type="radio" id="radio-279" value="option2">
                                        <label class="form-check-label" for="radio-279">2</label>
                                        </div>
                                        <div class="form-check mb-4">
                                        <input class="form-check-input" name="group1" type="radio" id="radio-379" value="option3">
                                        <label class="form-check-label" for="radio-379">3</label>
                                        </div>
                                        <div class="form-check mb-4">
                                        <input class="form-check-input" name="group1" type="radio" id="radio-479" value="option4">
                                        <label class="form-check-label" for="radio-479">4</label>
                                        </div>
                                        <div class="form-check mb-4">
                                        <input class="form-check-input" name="group1" type="radio" id="radio-579" value="option5">
                                        <label class="form-check-label" for="radio-579">5</label>
                                        </div>
                                        </div>';
                                    }else{
                                        echo '<strong>Oh oh!, Something went wrong.</strong>';
                                    }
                                        echo '<div class="modal-footer justify-content-center">';
                                    if($fetched_result < $counter){
                                        echo '
                                        <a type="button" class="btn btn-primary waves-effect waves-light">Next
                                        <!-- <i class="fa fa-paper-plane ml-1"></i> #icon to be fixed-->
                                        </a>';
                                    }else if($fetched_result = $counter){
                                        echo '<a type="button" class="btn btn-primary waves-effect waves-light">Submit
                                        <!-- <i class="fa fa-paper-plane ml-1"></i> #icon to be fixed-->
                                        </a>';
                                    }
                                        echo '<a type="button" class="btn btn-outline-primary waves-effect" data-dismiss="modal">Cancel</a>
                                        </div>';  
                                }
                            } 
                        ?>   
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
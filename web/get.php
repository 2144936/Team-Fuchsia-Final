<?php
    include_once 'includes/dbConnect.php';
    $query = "select a.id,a.essay,a.enumeration,a.mutipleChoice,a.trueOrFalse,a.question,a.points,b.answer from questions a join answer b on a.id = b.question_id where a.id = '".$_POST["id"]."'";
    $query2 = "select a.id,a.essay,a.enumeration,a.mutipleChoice,a.trueOrFalse,a.question,a.points,b.answer from questions a join answer b on a.id = b.question_id where a.mutipleChoice = '0' or a.essay = '0'";
    $result = mysqli_query($connect, $query);
    $result2 = mysqli_query($connect, $query2);
    $totalQ_checker = mysqli_num_rows($result2);
    $counter = 0;
if(isset($_POST["id"])){
    if($totalQ_checker > 0){
        while($row = mysqli_fetch_assoc($result)){
            $counter++;
            $essay = $row['essay'];
            $multi = $row['mutipleChoice'];
                echo '<div class="modal-header">
                <p class="heading lead">Question #'.$counter.'</p>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true" class="white-text">×</span>
                </button>
                </div>
                <div class="modal-body">
                <div class="text-center">';
            if($essay == '1'){
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
                <input class="form-check-input" name="group1" type="radio" id="radio-179" value="option1">
                <label class="form-check-label" for="radio-179">Berner Turners</label>
                </div>
                <div class="form-check mb-4">
                <input class="form-check-input" name="group1" type="radio" id="radio-279" value="option2">
                <label class="form-check-label" for="radio-279">Hakon Wium Lie</label>
                </div>
                <div class="form-check mb-4">
                <input class="form-check-input" name="group1" type="radio" id="radio-379" value="option3">
                <label class="form-check-label" for="radio-379">Hakon Wium Lie and Bert Bos</label>
                </div>
                <div class="form-check mb-4">
                <input class="form-check-input" name="group1" type="radio" id="radio-479" value="option4">
                <label class="form-check-label" for="radio-479">Hakon Wium Lie and Berner Turners</label>
                </div>
                <div class="form-check mb-4">
                <input class="form-check-input" name="group1" type="radio" id="radio-579" value="option5">
                <label class="form-check-label" for="radio-579">Bert Bos and Berner Turners</label>
                </div>
                </div>';
            }else{
                echo '<strong>Oh oh!, Something went wrong.</strong>';
            }
            $query_1 = "SELECT id FROM questions WHERE id < '".$_POST['id']."' ORDER BY id DESC LIMIT 1";
            $result_1 = mysqli_query($connect, $query_1);
            $data_1 = mysqli_fetch_assoc($result_1);
            $query_2 = "SELECT id FROM questions WHERE id > '".$_POST['id']."' ORDER BY id ASC LIMIT 1";
            $result_2 = mysqli_query($connect, $query_2);
            $data_2 = mysqli_fetch_assoc($result_2);
            echo '<div align="center">';
            echo '<button type="button" name="previous" class="btn btn-primary waves-effect waves-light previous" id="'.$data_1["id"].'">Previous</button>';
            echo '<button type="button" name="next" class="btn btn-primary waves-effect waves-light next" id="'.$data_2["id"].'">Next</button>';
            echo '<button type="button" name="next" class="btn btn-outline-primary waves-effect" data-dismiss="modal">Cancel</button>
             </div>';
        }
    }  
}
?>
<?php include 'database.php';?>
<?php session_start(); ?>
<?php
	//This set the number of a questions
	$number = (int) $_GET['n'];

	/*
	*Gets the total questions
	*/
	$query = "SELECT * FROM questions";

	//Results
	$results = $mysqli->query($query) or die ($mysqli->error._LINE_);
		$total = $results->num_rows;

	//Get questions
	$query = "SELECT * FROM questions WHERE question_number = $number";

	/*
	*Result
	*/
	$result = $mysqli->query($query) or die($mysqli->error._LINE_);
	$question = $result->fetch_assoc();

	//Get Choices
	$query = "SELECT * FROM choices WHERE question_number = $number";

	/*
	*Results
	*/
	$choices = $mysqli->query($query) or die($mysqli->error._LINE_);
	
?>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8"/>
	<title>Quiz</title>
	<link rel="stylesheet" href="css/style.css" type="text/css"/>
</head>
<body>
	<header>
		<div class="container">
			<h1>CSS Topic</h1>
		</div>
	</header>
	<main>
		<div class="container">
			<div class="current">Question <?php echo $question['question_number']; ?> of <?php echo $total; ?> </div>
		<p class="question">
			<?php echo $question['text']; ?>
		</p>
		<form method="post" action="process.php">
			<ul class="choices">
				<?php while($row = $choices->fetch_assoc()): ?>
			<li><input name="choice" type="radio" value="<?php echo $row['id']; ?>" /> <?php echo $row['text']; ?></li>	
			<?php endwhile; ?> 
			</ul>
			<input type="submit" name="Submit" />
			<input type="hidden" name= "number" value="<?php echo $number; ?>" />
	</main>
</body>
<footer>
		<div class="container">
			Copyright &copy; 2019 Quizzer
		</div>
</footer>
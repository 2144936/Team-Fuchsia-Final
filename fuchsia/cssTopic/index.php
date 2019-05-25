<?php include 'database.php'; ?>
<?php 
/*
*The total number of questions
*/
$query = "SELECT *FROM questions";
$results = $mysqli->query($query) or die($mysqli->error._LINE_);
$total = $results->num_rows;
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
			<h1>CSS Topic </h1>
	</header> 
	<main>
		<div class="container">
	
		<ul>
			<li><strong>Number of Questions:</strong><?php echo $total; ?></li>
		</ul>
		<a href="question.php?n=1" class="start">Start Quiz</a>
		</div>
	</main>
	<footer>
		<div class="container">
			Copyright &copy; 2019 Quizzer
		</div>
</footer>
</body>
</html>
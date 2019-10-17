<?php include "database.php"; ?>
<?php session_start(); ?>

<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8" />
    <title>Quizzer!</title>
    <link rel="stylesheet" href="css/style.css" type="text/css" />
  </head>
  <body>
    <div id="container">
      <header>
        <div class="container">
          <h1>Quizzer</h1>
	</div>
      </header>
<main>
	<div class="container">
	<form action=""<?php echo $_SERVER['PHP_SELF']; ?>>
	
	<p class="question">
		<?php
			$query="select * from questions";
			$result = $mysqli->query($query);
			$c=mysqli_num_rows($result);
			$rand=rand(3,$c)-3;
			$query="select * from questions where question_number > '$rand' limit 3";
			$result = $mysqli->query($query) or die($mysqli->error.__LINE__);; 

			while($row = $result->fetch_assoc()){
				echo $row["question"];
				echo ("<br>");
					loadRelevantAnswers($row["question_number"]);
				echo ("<br>");
			}
		?>
	</p>
	<input type="submit" value="submit" />
	<a href="final.php" class="start">Finish</a>
	<input type="hidden" name="number" value="<?php echo $number; ?>" />
	</form>
	</div>
</main>
<?php
	function loadRelevantAnswers($qid)
    {
        $db_host = 'localhost';
        $db_name = 'quizzer';
        $db_user = 'root';
        $db_pass = '';


        $mysqli = new mysqli($db_host,$db_user,$db_pass,$db_name);
        $query="select * from choices where question_number = '$qid'";
        $result = $mysqli->query($query) or die($mysqli->error.__LINE__);; 
        
        while($row = $result->fetch_assoc()){
            
            echo("<input type='radio' name='choice' value=".$row["choice"]."/>");
            echo $row["choice"];
           
            echo ("<br>");
        }
    }
?>

      <!-- <main>
      <div class="container">
        <div class="current">Question <?php echo $number; ?> of <?php echo $total; ?></div>
			<p class="question">
	   			<?php echo $question['question'] ?>
			</p>
			<form method="post" action="process.php">
				<ul class="choices">
					<?php while($row=$choices->fetch_assoc()): ?>
						<li><input name="choice" type="radio" value="<?php echo $row['id']; ?>" />
							<?php echo $row['choice']; ?>
						</li>
					<?php endwhile; ?>
				</ul>
				<input type="submit" value="submit" />
				<input type="hidden" name="number" value="<?php echo $number; ?>" />
			</form>
      </div>
    </div>
    </main> -->


    <footer>
      <div class="container">
	  R.M.D.S.Rathnayake
      </div>
    </footer>
  </body>
</html>
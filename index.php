<?php include "database.php"; ?>

<?php
	//Get the total questions
	$query="select * from questions";
	//Get Results
	$results = $mysqli->query($query) or die ($mysqli->error.__LINE__);
	$total = $results->num_rows;

 ?>
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
        <h2>Test your Knowledge</h2>
	<p>This is a multiple choice quize to test your knowledge about something</p>
	<ul>
		<li><strong>Number of Questions: </strong><?php echo $total; ?></ul>
		<li><strong>Type: </strong>Multiple Choice</ul>
        <?php
          
        //   // $number = $randomId;
        //   $smallestId=(int) $mysqli->query("SELECT id FROM questions ORDER BY id ASC LIMIT 1");
        //   $biggestId=$mysqli->query("SELECT id FROM questions ORDER BY id DESC LIMIT 1");
        //   $randomId = mt_rand($smallestId, $biggestId);	
        ?>
  
	<a href="question.php" class="start">Start Quiz</a>
	<!-- <a href="q2.php" class="start">Start Quiz</a> -->

	<a href="add.php" class="start">ADD Quiz</a>

      </div>
    </div>
    </main>


    <footer>
      <div class="container">
      	   R.M.D.S.Rathnayake
      </div>
    </footer>
  </body>
</html>
<?php
  $servername = "localhost";
  $username = "root";
  $password ="";
  $dbname ="cursor_db1";
  //Create connection
  $conn = new mysqli($servername,$username,$password, $dbname);

  //Check connection
  if (mysqli_connect_error()) {
    die("Database connection failed: " . mysqli_connect_error());
}

?>

<!DOCTYPE html>
<html lang="en">
	<head>
		<title>CURSOR</title>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
		<link rel="stylesheet" href="css/home.css">
		<style type="text/css">
			.topnav{
				background-color: white ;
			}
		</style>
	</head>
	<body>
	<?php
		include "nav.php";
	?>

	    <div id="project" class="white" style="height: 70vh;">  
	      <div class="introduction-text">
	        <div class="vertical-text vertical-project dark-copy" style="/*! opacity: 1; */ /*! transform: matrix(0, -1, 1.03527, 0, 0, 0); */">2017-18
	        </div>
	        <div class="intro-main main-project"> 
	          <h1 class="dark-copy">
	            <div style="position: relative; display: inline-block; opacity: 1; transform: matrix(1, 0, 0, 1, 0, 0);">CURSOR
	            </div>
	          </h1> 
	          <h2 class="dark-copy">
	            <div style="position: relative; display: inline-block; opacity: 1; transform: matrix(1, 0, 0, 1, 0, 0);">Computer Engineering Students Organization
	            </div> 
	          </h2>  
	        </div>  
	      </div> 
	      <div class="line-scroll-down-container" style="opacity: 1;"> 
	        <div class="line-scroll-down dark-bg" style="transform: translate(0%, -100%) matrix(1, 0, 0, 1, 0, 0);">
	        </div> 
	      </div> 
	      <div class="massive-typo typo-intro typo-home" style="opacity: 1; transform: matrix(1, 0, 0, 1, 0, 0);">
	      
	      </div> 
	    </div>

		<div class="row">
			<header>
		    	<h2>ABOUT</h2>
			</header>
		  <div class="column middle">
		  	<h3>CURSOR</h3>
		    <p>We are the students organization of computer department of GEC. With the sole mission to improve technical sckills of students we strive to organise Events and workshop for students.</p>
		  </div>
		  <div class="column middle ">
		  	<div class="evntposter">
		    	<img src="images/comp_dept.jpg">
		    </div>
		  </div>
		</div>

		<div class="row">
			<header>
		    	<h2>EVENTS</h2>
			</header>

		  <div class="column full" style="text-align: center;">
		    <h1 style="font-size: 6em ; color: #363535">Coming Soon</h1>
		  </div>
		</div>

		<div class="row">
			<header>
		    	<h2>NEWS</h2>
			</header>

		  <div class="column full">
		    <?php
		    	include"news_section.php";
		    ?>
		  </div>

		</div>
		<div class="row">
			<header>
		    	<h2>GALLARY</h2>
			</header>			
			 <div class="column full">
			    <?php
			    	include"gallary_section.php";
			    ?>
		    </div>
		</div>

		<div class="footer">
	        <i class="fa fa-facebook-official w3-hover-opacity"></i>
			<!-- <i class="fa fa-instagram w3-hover-opacity"></i> -->
			<!-- <i class="fa fa-snapchat w3-hover-opacity"></i> -->
			<!-- <i class="fa fa-pinterest-p w3-hover-opacity"></i> -->
			<i class="fa fa-twitter w3-hover-opacity"></i>
			<!-- <i class="fa fa-linkedin w3-hover-opacity"></i> -->
		  	<p>Made by <a href="#" target="_blank">Code Freaks</a></p>
		</div>
	      <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

	    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

	    <script src='http://cdnjs.cloudflare.com/ajax/libs/modernizr/2.8.3/modernizr.min.js'></script>
	    <script src="js/folding_cards.js"></script>
	</body>
</html>

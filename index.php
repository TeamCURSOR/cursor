<?php
 include 'connection.php';

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
		<!-- Global Site Tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-107486826-1"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments)};
  gtag('js', new Date());

  gtag('config', 'UA-107486826-1');
</script>
	</head>
	<body>
	<?php
		include "nav.php";
	?>

	    <div id="project" class="white" style="height: 70vh;">  
	      <div class="introduction-text">
	        <div class="vertical-text vertical-project dark-copy" style=" opacity: 1;  /*! transform: matrix(0, -1, 1.03527, 0, 0, 0); */">2017-18
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
		    	<h2 style="margin:70px;"></h2>
		    	<h2>ABOUT</h2>
			</header>
		  <div class="column middle" style="padding: 0 5%; line-height: 2em">
		  	<h3 style="color: #e70538;">CURSOR</h3>
		    <p>We are the students' organization of computer department of GEC.</p>
		    <p> The department has helped inculcate a conducive environment in the campus which ignites young minds that prepare engineers who could find technical solution to daily life problems.</p>
		    <p> The sole mission of CURSOR is to improve technical skills of students for which we promote and hold various technical events throughout the year and provide young minds with infinite opportunities.</p>
		    <p> The events held include various technical workshops, hackathon, coding events, technical talks etc.</p>
		  </div>
		  <div class="column middle ">
		  	<div class="evntposter">
		    	<img src="images/undefined/comp_dept.jpg">
		    </div>
		  </div>
		</div>

		<div class="row">
			<header>
		    	<h2 style="margin:70px;"></h2>
		    	<h2>EVENTS</h2>
			</header>

		   <div class="column full" >		 
		    <?php
		    	include"event_section.php";
		    ?>
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
		    	<h2>GALLERY</h2>
			</header>			
			 <div class="column full">
			    <?php
			    	include"gallery_section.php";
			    ?>
		    </div>
		</div>
<?php
include "footer.php";
?>
		
	      <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

	    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	      <script src='js/lib/jquery/jquery-3.2.1.min.js'></script>
	    <script src='js/lib/modernizr.min.js'></script>
	    <script src="js/folding_cards.js"></script>
	</body>
</html>

<?php

	$conn->close();
?>
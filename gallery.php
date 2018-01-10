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
    <link rel="stylesheet" href="css/gallary.css">
    <style type="text/css">
      .topnav{
            background-color:#00EF8F;
      }
    </style>    
  </head>
  <body>
  <?php
    include "nav.php";
  ?>

    <div id="project" class="green" style="height: 70vh;">  
      <div class="introduction-text">
        <div class="vertical-text vertical-project dark-copy" style="/*! opacity: 1; */ /*! transform: matrix(0, -1, 1.03527, 0, 0, 0); */">2017-18
        </div>
        <div class="intro-main main-project"> 
          <h1 class="dark-copy">
            <div style="position: relative; display: inline-block; opacity: 1; transform: matrix(1, 0, 0, 1, 0, 0);">GALLARY
            </div>
          </h1> 
          <h2 class="dark-copy">
            <div style="position: relative; display: inline-block; opacity: 1; transform: matrix(1, 0, 0, 1, 0, 0);">Some of our moments of past.
            </div> 
          </h2>  
        </div>  
      </div> 
      <div class="line-scroll-down-container" style="opacity: 1;"> 
        <div class="line-scroll-down dark-bg" style="transform: translate(0%, -100%) matrix(1, 0, 0, 1, 0, 0);">
        </div> 
      </div> 
      <div class="massive-typo typo-intro typo-gallary" style="opacity: 1; transform: matrix(1, 0, 0, 1, 0, 0);">
      
      </div> 
    </div>

    <div class="row">
      <header>
          <h2>Council Intro videos</h2>
      </header>

      <div class="column ">
          <div class="video">
            <iframe min-width="280" min-height="157.5" src="https://www.youtube.com/embed/X1MRGHnGonM?rel=0" frameborder="0" allowfullscreen></iframe>
            <p>2017-2018</p>
          </div>
          <div class="video hidden">

            <p>2016-2017</p>
          </div>
          <div class="video hidden">

            <p>2015-2016</p>
          </div>
          <div class="video hidden">

            <p>2014-2015</p>
          </div>
          <div class="video hidden">

            <p>2013-2014</p>
          </div>
          <div class="video">
            <iframe min-width="280" min-height="157.5" src="https://www.youtube.com/embed/CigYei7djy0?rel=0" frameborder="0" allowfullscreen></iframe>
            <p>2012-2013</p>
          </div>
          <div class="video">
            <iframe min-width="280" min-height="157.5" src="https://www.youtube.com/embed/RJqtjUaHAYs?rel=0" frameborder="0" allowfullscreen></iframe>
            <p>2011-2012</p>
          </div>
          <div class="video">
            <iframe min-width="280" min-height="157.5" src="https://www.youtube.com/embed/3pndk5QMARw?rel=0" frameborder="0" allowfullscreen></iframe>
            <p>2010-2011</p>
          </div>
          <div class="video hidden">
            
            <p>2009-2010</p>
          </div>
          <div class="video">
            <iframe min-width="280" min-height="157.5" src="https://www.youtube.com/embed/mU8dxPLuj5s?rel=0" frameborder="0" allowfullscreen></iframe>
            <p>2008-2009</p>
          </div>
          <div class="video hidden">
          
            <p>2007-2008</p>
          </div>
          <div class="video">
            <iframe min-width="280" min-height="157.5" src="https://www.youtube.com/embed/wmwxXSmFPyQ?rel=0" frameborder="0" allowfullscreen></iframe>
            <p>2006-2007</p>
          </div>
      </div>
    </div>
    
    <div class="row">
      <header>
          <h2>Photo Gallary</h2>
      </header>

      <div class="column ">
      	<ul>
      		<?php
      			$queryy="SELECT * FROM `media` Limit 10 OFFSET 20;";
      			$result = $conn->query($queryy);

      			if($result->num_rows >0)
      			{
      				while($row = $result->fetch_assoc())
      				{
      		?>
	      	<li class="photo">
	      		<div>
	      			<img src="<?php echo $row['media_path']."/".$row['media_name'] ?>">
	      			<a >Photo</a>
	      		</div>
	      	</li>
      		<?php

      				}
      			}
      		?>
	    </ul>
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
    
  </body>
</html>

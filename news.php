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
    <link rel="stylesheet" href="css/news_cards_style.css">
    <style type="text/css">
      .topnav{
    background-color:#627AEF;
      }
    </style>
  </head>
  <body>
  <?php
    include "nav.php";
  ?>
    
    <div id="project" class="blue" style="height: 40vh;">  
      <div class="introduction-text">
        <div class="vertical-text vertical-project dark-copy" style="/*! opacity: 1; */ /*! transform: matrix(0, -1, 1.03527, 0, 0, 0); */">2017-18
        </div>
        <div class="intro-main main-project"> 
          <h1 class="dark-copy">
            <div style="position: relative; display: inline-block; opacity: 1; transform: matrix(1, 0, 0, 1, 0, 0);">NEWS
            </div>
          </h1> 
          <h2 class="dark-copy">
            <div style="position: relative; display: inline-block; opacity: 1; transform: matrix(1, 0, 0, 1, 0, 0);">Lets update you with our past activities
            </div> 
          </h2>  
        </div>  
      </div> 
      <div class="line-scroll-down-container" style="opacity: 1;"> 
        <div class="line-scroll-down dark-bg" style="transform: translate(0%, -100%) matrix(1, 0, 0, 1, 0, 0);">
        </div> 
      </div> 
      <div class="massive-typo typo-intro typo-news" style="opacity: 1; transform: matrix(1, 0, 0, 1, 0, 0);">
      
      </div> 
    </div>

    <div class="row">
      <header>
          <h2></h2>
      </header>

      <div class="column ">
        <div class="cards" >
        <?php

          $queryy="SELECT * FROM `news_article`  ORDER BY `news_article`.`publish_datetime` DESC ";
          $result = $conn->query($queryy);

          if($result->num_rows > 0)
          {
            while($row =$result->fetch_assoc())
            {
          ?>
          <div class="card">
              <img src=<?php echo $row['image_link']?> >
              <div class="card-title">
                <a href="#" class="toggle-info btn">
                  <span class="left"></span>
                  <span class="right"></span>
                </a>
                <h2>
                    <?php echo $row['heading']?>
                    <small><?php echo $row['subheading']?></small>
                </h2>
              </div>
              <div class="card-flap flap1">
                <div class="card-description">
                 <?php echo $row['description']?>
                </div>
                <div class="card-flap flap2">
                  <div class="card-actions">
                    <a href="#" onclick="location.href = '<?php echo $row['news_content_link']?>';"   class="btn">Read more</a>
                  </div>
                </div>
              </div>
            </div>  
        <?php 
            } 
          }
        ?>
        </div>
      </div>
    </div>
    
    <div class="row">
      <header>
          <h2></h2>
      </header>
            <header>
          <h2></h2>
      </header>
            <header>
          <h2></h2>
      </header>

      <div class="column ">
      </div>

    </div>
<?php
include "footer.php";
?>
    

    <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
    <script src='http://cdnjs.cloudflare.com/ajax/libs/modernizr/2.8.3/modernizr.min.js'></script>
    <script src='js/lib/jquery/jquery-3.2.1.min.js'></script>
    <script src='js/lib/modernizr.min.js'></script>
    <script src="js/folding_cards.js"></script>
  </body>
</html>

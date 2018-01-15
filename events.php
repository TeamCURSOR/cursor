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
    <link rel="stylesheet" href="css/events.css">
    <style type="text/css">
      .topnav{
    background-color: #F3A750;
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
      <div id="project" class="yellow" style="height: 40vh;">  
        <div class="introduction-text">
          <div class="vertical-text vertical-project dark-copy" style="/*! opacity: 1; */ /*! transform: matrix(0, -1, 1.03527, 0, 0, 0); */">2017-18
          </div>
          <div class="intro-main main-project"> 
            <h1 class="dark-copy">
              <div style="position: relative; display: inline-block; opacity: 1; transform: matrix(1, 0, 0, 1, 0, 0);">Events
              </div>
            </h1> 
            <h2 class="dark-copy">
              <div style="position: relative; display: inline-block; opacity: 1; transform: matrix(1, 0, 0, 1, 0, 0);">Come join us at Events we host
              </div> 
            </h2>  
          </div>  
        </div> 
        <div class="line-scroll-down-container" style="opacity: 1;"> 
          <div class="line-scroll-down dark-bg" style="transform: translate(0%, -100%) matrix(1, 0, 0, 1, 0, 0);">
          </div> 
        </div> 
        <div class="massive-typo typo-intro typo-events" style="opacity: 1; transform: matrix(1, 0, 0, 1, 0, 0);">
        
        </div> 
      </div>

    
    <div class="row">
      <header>
          <h2></h2>
      </header>

      <div class="column full" style="padding:10%;">
      	
      		<?php
      			/*$queryy="SELECT * FROM `event` join `event_coordinator` on `event`.`event_id` = `event_coordinator`.`event_id` join `coordinator` on `event_coordinator`.`coordinator_id` =`coordinator`.`id`";*/

            $queryy="SELECT * FROM `event` join `media` ON `event`.`media_id`=`media`.`media_id` ";
      			$result = $conn->query($queryy);

      			if($result->num_rows >0)
      			{
      				while($row = $result->fetch_assoc())
      				{
                  $query2="SELECT * FROM `coordinator` join ( Select * from `event_coordinator` WHERE `event_id`=".$row["event_id"]." ) as `t` on `t`.`coordinator_id` =`coordinator`.`id` ;";
      		?>

	      	      
          <div class="shop-card">
            <div class="title">
              <a ><?php echo $row['title'];?></a>
            </div>
            <div class="desc">
              <?php echo $row['description'];?>
            </div>
            <div class="slider">
              <figure data-color="#E24938, #A30F22">
                <img src="<?php echo $row['media_path'].'/'.$row['media_name'] ;?>">
              </figure>
              <figure data-color="#E24938, #A30F22">
                                
                <p><?php echo $row['requirements'];?></p>
                <p><?php echo $row['last_reg_date'];?></p>
              </figure>
              <figure>
                <?php
                  $subresult = $conn->query($query2);

                  if($subresult->num_rows >0)
                  {
                    while($subrow = $subresult->fetch_assoc())
                    {
                ?>
                <p>
                  <?php echo $subrow['name'];?> &nbsp
                  <?php echo $subrow['contact_no'];?>                    
                </p>
                  <?php
                  }
                }
                  ?>
              </figure>
            </div>
            <div class="cta">
              <div class="price">
                <?php echo $row['reg_fee_info'];?>
              </div>
              
              <!-- <button class="btn">Add to cart<span class="bg"></span></button> -->
            </div>

	      	</div>

      		<?php
      			}
          }
      		?>


      <!-- <img style="opacity: .2; margin-top:200px; margin-top:20vh" src="images/ai_svg/COMING_SOON.svg"> -->
      
      </div>
    </div>


<?php
include "footer.php";
?>
    
  </body>
      <script src="js/events.js"></script>
</html>


<?php

  $conn->close();
?>
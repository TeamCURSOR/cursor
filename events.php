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
    <link rel="stylesheet" href="css/events.css">
    <style type="text/css">
      .topnav{
    background-color: #F3A750;
      }
    </style>
  </head>
  <body>
  <?php
    include "nav.php";
  ?>
      <div id="project" class="yellow" style="height: 70vh;">  
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

      <div class="column full" style="height: 500px;padding:0 10%;">
      	<!-- <ul>
      		<?php
      			/*$queryy="SELECT * FROM `event` join `event_coordinator` on `event`.`event_id` = `event_coordinator`.`event_id` join `coordinator` on `event_coordinator`.`coordinator_id` =`coordinator`.`id`";*/

            $queryy="SELECT * FROM `event` ;";
      			$result = $conn->query($queryy);

      			if($result->num_rows >0)
      			{
      				while($row = $result->fetch_assoc())
      				{
                  $query2="SELECT * FROM `coordinator` join ( Select * from `event_coordinator` WHERE `event_id`=".$row["event_id"]." ) as `t` on `t`.`coordinator_id` =`coordinator`.`id` ;";
      		?>
	      	<li >
            <div class="photo">
  	      		<div>
  	      			<img src="<?php echo $row['photo_link'] ;?>">
  	      			<a ><?php echo $row['title'];?></a>
  	      		</div>
                <p><?php echo $row['info'];?></p>                
                <p><?php echo $row['requirements'];?></p>
                <p><?php echo $row['last_reg_date'];?></p>

                <?php
                  $subresult = $conn->query($query2);

                  if($subresult->num_rows >0)
                  {
                    while($subrow = $subresult->fetch_assoc())
                    {
                ?>
                <p><?php echo $subrow['name'];?></p>
                <p><?php echo $subrow['contact_no'];?></p>
                  <?php
                  }
                }
                  ?>
            </div>
	      	</li>
      		<?php
      			}
          }
      		?>
	    </ul> -->

      <img style="opacity: .2; margin-top:200px; margin-top:20vh" src="images/ai_svg/COMING_SOON.svg">
      </div>

    </div>
<?php
include "footer.php";
?>
    
  </body>
</html>

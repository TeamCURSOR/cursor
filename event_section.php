			<!--Event Section-->
<!-- <img style="opacity: .2; margin-top:200px; margin-top:20vh" src="images/ai_svg/COMING_SOON.svg">
 -->

<section id="events" class="" >
	<div style="margin: 0 50px; padding: 5%;left: auto;right: auto;position: relative;">
    <link rel="stylesheet" href="css/events.css">
			<?php
				/*$queryy="SELECT * FROM `event` join `event_coordinator` on `event`.`event_id` = `event_coordinator`.`event_id` join `coordinator` on `event_coordinator`.`coordinator_id` =`coordinator`.`id`";*/

	    $queryy="SELECT * FROM `event` join `media` ON `event`.`media_id`=`media`.`media_id`  limit 3";
				$result = $conn->query($queryy);

				if($result->num_rows >0)
				{
					while($row = $result->fetch_assoc())
					{
	          $query2="SELECT * FROM `coordinator` join ( Select * from `event_coordinator` WHERE `event_id`=".$row["event_id"]." ) as `t` on `t`.`coordinator_id` =`coordinator`.`id` ;";
			?>

	  	      
	  <div class="event-card">
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
	      
	      <button class="btn">Register<span class="bg"></span></button>
	    </div>

	  	</div>
			<?php
				}
	  }
			?>
	</div>
</section>
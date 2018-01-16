
<section id="news" ">			
<link rel="stylesheet" href="css/gallery.css">
	  	<ul>
	  		<?php

	  			$queryy="Select `gallery`.`grp_id`, image_paths, gallary_name as album_name from gallery join (Select `grp_id`, GROUP_CONCAT(image_path) as image_paths from (Select `media`.`grp_id`, concat(`media_path`,'/',`media_name`) as image_path from media join (SELECT `grp_id`, GROUP_CONCAT(media_id) as medias FROM `media` WHERE `grp_id` not in ('undefined', 'ai_svg', 'events') GROUP BY `grp_id`) as grps on media.grp_id=grps.grp_id WHERE FIND_IN_SET(`media`.`media_id`, grps.medias)<4) as photos group by photos.grp_id) as albums on gallery.grp_id = albums.grp_id limit 3";
	  			$result = $conn->query($queryy);

	  			if($result->num_rows >0)
	  			{
	  				while($row = $result->fetch_assoc())
	  				{
	  		?>
	      	<li class="photo ">
	      		<div class="album">
	          
	          <?php
	          foreach (explode(',', $row['image_paths']) as $imagePath) {
	            # code...
	          ?>
	      			  <img  src="<?php echo $imagePath ?>">
	          <?php
	            }
	          ?> 	      			
	      		</div>
	        <p><?php echo $row['album_name'];?></p>
	      	</li>
	  		<?php

	  				}
	  			}
	  		?>
	    </ul>
</section>
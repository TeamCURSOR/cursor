<ul>
    <link rel="stylesheet" href="css/gallery.css">
	<?php
		$queryy="SELECT * FROM `media` WHERE `grp_id` not in ('undefined', 'ai_svg', 'events') GROUP BY `grp_id` Limit 10 ;";
		$result = $conn->query($queryy);

		if($result->num_rows >0)
		{
			while($row = $result->fetch_assoc())
			{
	?>
	<li class="photo">
		<div>
			<img src="<?php echo $row['media_path']."/".$row['media_name'] ?>">
  			<a ><?php echo $row['grp_id'];?></a>
		</div>
	</li>
	<?php

			}
		}
	?>
</ul>
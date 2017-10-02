<ul>
    <link rel="stylesheet" href="css/gallary.css">
	<?php
		$queryy="SELECT * FROM `media` Limit 6 offset 31;";
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
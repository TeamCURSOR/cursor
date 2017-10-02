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

	$dir=getcwd();
	$files1 =scandir($dir);

	foreach ($files1 as $value) {
		# code...
		if(($value==".")||($value=="..")||($value=="script.php"))
			continue;
		echo $value ."&nbsp&nbsp&nbsp&nbsp";
		echo mime_content_type($value);

		"INSERT INTO `media`( `media_name`, `media_type`, `media_path`) VALUES ('".$value."', '".mime_content_type($value)."', 'img')";

		echo "__|".$queryy."|__";
		if($conn->query($queryy) ===TRUE){
				echo " __Sucessful__ ";
		}
		else{
			echo "__error__";
		}
		echo "<br>";
	}
?>
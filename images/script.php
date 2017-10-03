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



/*	echo dirname($_SERVER['SCRIPT_NAME']) ."<br>";*/
	/*echo substr(dirname(__FILE__), strlen($_SERVER['DOCUMENT_ROOT'])) ."<br>";
	echo substr(__DIR__, strlen($_SERVER['DOCUMENT_ROOT'])) ."<br>";*/
/*	echo substr(__DIR__, strlen($_SERVER['DOCUMENT_ROOT']) +strlen(dirname($_SERVER['SCRIPT_NAME']))) ."<br>";*/
/*	echo substr(str_replace('\\', '/', realpath(dirname(__FILE__))), strlen(str_replace('\\', '/', realpath($_SERVER['DOCUMENT_ROOT']))))."<br>";*/
   $grp_id ="";
	function echo_file_info($directory_name,$pre_string)
	{
		echo $pre_string;

		chdir($directory_name);
		echo $directory_name."<br>";
		$files =scandir($directory_name);
		foreach ($files as $value) {
			# code...

			$mime_type = mime_content_type($value);

			if(($value==".")||($value=="..")||($value=="script.php"))
				continue;
			if($mime_type=="directory")
			{
				$GLOBALS['grp_id'] = $value;
				echo_file_info($directory_name."\\".$value,'"'.$pre_string."\\".$value.'"');
/*				echo $directory_name."\\".$value." ---- ";	
*/			}
			/*else
			{*/
				chdir($directory_name);
				echo $value ."&nbsp&nbsp&nbsp&nbsp";
				echo mime_content_type($value);
			/*}*/
			if($mime_type!="directory")
			{
				$queryy="INSERT INTO `media`( `grp_id`,`media_name`, `media_type`, `media_path`) VALUES ('".$GLOBALS['grp_id']."','".$value."', '".mime_content_type($value)."', ".$pre_string.")";

				echo "__|".$queryy."|__";
			
				if($GLOBALS['conn']->query($queryy) ===TRUE){
						echo " __Sucessful__ ";
				}
				else{
					echo "__error__";
				}
			}
			echo "<br>";
		}
		echo $pre_string;
	}
	$dir=getcwd();
	echo_file_info($dir,"images\\");

?>
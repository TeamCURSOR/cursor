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
    <link rel="stylesheet" href="css/gallery.css">
    <style type="text/css">
      .topnav{
            background-color:#00EF8F;
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

    <div id="project" class="green" style="height: 40vh;">  
      <div class="introduction-text">
        <div class="vertical-text vertical-project dark-copy" style="/*! opacity: 1; */ /*! transform: matrix(0, -1, 1.03527, 0, 0, 0); */">2017-18
        </div>
        <div class="intro-main main-project"> 
          <h1 class="dark-copy">
            <div style=" position: relative; display: inline-block; opacity: 1; transform: matrix(1, 0, 0, 1, 0, 0);  " >Gallery
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
            <h2 style="margin:70px;"></h2>
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
                <h2 style="margin:70px;"></h2>
          <h2>Photo Gallery</h2>
          <pre style="font-size: 14px; color: white;">under beta</pre>
      </header>

      <div class="column ">
      	<ul>
      		<?php

      			$queryy="Select `grp_id`, GROUP_CONCAT(image_path) as image_paths from (Select `media`.`grp_id`, concat(`media_path`,'/',`media_name`) as image_path from media  join (SELECT `grp_id`, GROUP_CONCAT(media_id) as medias FROM `media` WHERE `grp_id` not in ('undefined', 'ai_svg', 'events') GROUP BY `grp_id`) as grps on media.grp_id=grps.grp_id WHERE FIND_IN_SET(`media`.`media_id`, grps.medias)<4) as photos group by photos.grp_id";
      			$result = $conn->query($queryy);

      			if($result->num_rows >0)
      			{
      				while($row = $result->fetch_assoc())
      				{
      		?>
	      	<li class="photo">
	      		<div>
              
              <?php
              foreach (explode(',', $row['image_paths']) as $imagePath) {
                # code...
              ?>
	      			  <img src="<?php echo $imagePath ?>">
              <?php
                }
              ?> 
	      			<a ><?php echo $row['grp_id'];?></a>
	      		</div>
	      	</li>
      		<?php

      				}
      			}
      		?>
	    </ul>
      </div>

    </div>

<!--  -->

<div id="main" class="container">
  <h1 class="text-center">pure CSS albums gallery</h1>
  <div id="gallery" class="row">
    <div class="col-xs-4 gallery-item">
      <div class="album">
        <img src="http://lorempixel.com/400/400/sports/" alt="" />
        <img src="http://lorempixel.com/400/400/nature/" alt="" />
        <img src="http://lorempixel.com/400/400/animals/" alt="" />
      </div>
      <p>Holidays</p>
    </div>
  
  </div>
</div>
<!--  -->

<?php
include "footer.php";
?>
    
  </body>
</html>


<?php

  $conn->close();
?>
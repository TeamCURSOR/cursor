<section id="news" ">			
<link rel="stylesheet" href="css/news_cards_style.css">
	<div class="cards">
        <?php

			$queryy="SELECT * FROM `news_article`  ORDER BY `news_article`.`publish_datetime` DESC Limit 3;";
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
</section>
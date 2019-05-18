<?php include 'includes/connection.php';?>
<?php include 'includes/header.php';?>
<?php include 'includes/navbar.php';?>

<br><br>
	<link rel="stylesheet" type="text/css" href="styles.css" media="all" />
    <link rel="stylesheet" type="text/css" href="demo.css" media="all" />
    <!-- jQuery -->
    <script type="text/javascript" src="js/jquery.min.js"></script>
    <!-- FlexSlider -->
    <script type="text/javascript" src="js/jquery.flexslider-min.js"></script>
    <script type="text/javascript" charset="utf-8">
    var $ = jQuery.noConflict();
    $(window).load(function() {
    $('.flexslider').flexslider({
          animation: "fade"
    });
	
	$(function() {
		$('.show_menu').click(function(){
				$('.menu').fadeIn();
				$('.show_menu').fadeOut();
				$('.hide_menu').fadeIn();
		});
		$('.hide_menu').click(function(){
				$('.menu').fadeOut();
				$('.show_menu').fadeIn();
				$('.hide_menu').fadeOut();
		});
	});
  });
</script>

     <div class="slider_container">
		<div class="flexslider">
	      <ul class="slides">
	    	<li>
	    		<a href="#"><img src="images/slider/img1.jpg" alt="" title=""/></a>
	    		<div class="flex-caption">
                     <div class="caption_title_line"><h2>Easy Notes Management</h2><p>Now notes managemnet become easy by uploading them here.</p></div>
                </div>
	    	</li>
	    	<li>
	    		<a href="#"><img src="images/slider/img2.jpg" alt="" title=""/></a>
	    		<div class="flex-caption">
                     <div class="caption_title_line"><h2>Upload Various Files</h2><p>Upload various types of files like PDF, PPT, DOC etc..</p></div>
                </div>
	    	</li>
	    	<li>
	    		<a href="#"><img src="images/slider/slide3.png" alt="" title=""/></a>
	    		<div class="flex-caption">
                     <div class="caption_title_line"><h2>Controled By Admin</h2><p>Everying is managed and controled by Database administrator</p></div>
                </div>
	    	</li>
	    	<li>
	    		<a href="#"><img src="images/slider/slide4.jpg" alt="" title=""/></a>
	    		<div class="flex-caption">
                     <div class="caption_title_line"><h2>Secure Login For Both Students and Teachers</h2><p>Both faculty and students can login securly </p></div>
                </div>
	    	</li>
	    </ul>
	  </div>
   </div>
    </div>  
</div>

</body>
</html>

        
<!DOCTYPE HTML>
<html>
	<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Smart Home</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="" />
	<meta name="keywords" content="" />
	<meta name="author" content="" />

  <!-- Facebook and Twitter integration -->

	<!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
	
	<!-- Animate.css -->
	<link rel="stylesheet" href="css/animate.css">
	<!-- Icomoon Icon Fonts-->
	<link rel="stylesheet" href="css/icomoon.css">
	<!-- Bootstrap  -->
	<link rel="stylesheet" href="css/bootstrap.css">
	<!-- Flexslider  -->
	<link rel="stylesheet" href="css/flexslider.css">
	<!-- Flaticons  -->
	<link rel="stylesheet" href="fonts/flaticon/font/flaticon.css">
	<!-- Owl Carousel -->
	<link rel="stylesheet" href="css/owl.carousel.min.css">
	<link rel="stylesheet" href="css/owl.theme.default.min.css">
	<!-- Theme style  -->
	<link rel="stylesheet" href="css/style.css">

	<!-- Modernizr JS -->
	<script src="js/modernizr-2.6.2.min.js"></script>
	<!-- FOR IE9 below -->
	<!--[if lt IE 9]>
	<script src="js/respond.min.js"></script>
	<![endif]-->
		<style>
		.switch {
			  position: relative;
			  display: inline-block;
			  width: 60px;
			  height: 34px;
			}

			/* Hide default HTML checkbox */
		.switch input {display:none;}

			/* The slider */
		.slider {
			  position: absolute;
			  cursor: pointer;
			  top: 0;
			  left: 0;
			  right: 0;
			  bottom: 0;
			  background-color: #ccc;
			  -webkit-transition: .4s;
			  transition: .4s;
			}

		.slider:before {
			  position: absolute;
			  content: "";
			  height: 26px;
			  width: 26px;
			  left: 4px;
			  bottom: 4px;
			  background-color: white;
			  -webkit-transition: .4s;
			  transition: .4s;
			}

		input:checked + .slider {
			  background-color: #FFC300;
			}

		input:focus + .slider {
			  box-shadow: 0 0 1px #2196F3;
			}

		input:checked + .slider:before {
			  -webkit-transform: translateX(26px);
			  -ms-transform: translateX(26px);
			  transform: translateX(26px);
			}

			/* Rounded sliders */
		.slider.round {
			  border-radius: 34px;
			}

		.slider.round:before {
			  border-radius: 50%;
			}
		
		.room h2 {
				top: 20px;
			}	
		.room .switch{
				top: 20px;
			}

	</style>
	<script>
		function control(num, status) {
			var cb = document.getElementsByClassName("cb");
			if(status.checked) {
				document.getElementById("iframe").src = "./on.php?on=on" + num; 				
				if(num == '0') {					
					for(var i = 1; i < cb.length; i++) {
						cb[i].checked = "checked";
					}
				} else {
					for(var i = 1; i < cb.length; i++) {
						if(!cb[i].checked) {
							break;
						} else if(i == cb.length - 1) {
							cb[0].checked = status.checked;
						}
					}
				}
			} else {
				document.getElementById("iframe").src = "./off.php?off=off" + num; 
				if(num == '0') {		
					for(var i = 1; i < cb.length; i++) {
						cb[i].checked = !cb[i].checked;
					}
				} else {
					cb[0].checked = status.checked;
				}
			}					
		}
		
		function load() {
			var cb = document.getElementsByClassName("cb");
			var onoff = "<?php
							if(wincache_ucache_exists('onoff')) {
								echo wincache_ucache_get('onoff');
							} else {
								echo -1;
							}
							
						?>";		
			for(var i = 0; i < onoff.length; i++) {
				if(onoff[i] == '1') {
					cb[i + 1].checked = "checked";
				}
			}
			for(var i = 1; i < cb.length; i++) {
				if(!cb[i].checked) {
					break;
				} else if(i == cb.length - 1) {
					cb[0].checked = "checked";
				}
			}
			/*if(onoff1 == '1') {
				cb[1].checked = "checked";
			} 
			var onoff2 = <?php
							$filename2 = "onoff2.txt";
							$file2 = fopen($filename2, "r");
							$filesize2 = filesize($filename2);
							$filetext2 = fread($file2, $filesize2);
							fclose($file2);
							if($filetext2 != null) {
								echo $filetext2;
							}
						?>;
			if(onoff2 == '1') {
				cb[2].checked = "checked";
			} 
			var onoff3 = <?php
							$filename3 = "onoff3.txt";
							$file3 = fopen($filename3, "r");
							$filesize3 = filesize($filename3);
							$filetext3 = fread($file3, $filesize3);
							fclose($file3);
							if($filetext3 != null) {
								echo $filetext3;
							}
						?>;
			if(onoff3 == '1') {
				cb[3].checked = "checked";
			} 
			var onoff4 = <?php
							$filename4 = "onoff4.txt";
							$file4 = fopen($filename4, "r");
							$filesize4 = filesize($filename4);
							$filetext4 = fread($file4, $filesize4);
							fclose($file4);
							if($filetext4 != null) {
								echo $filetext4;
							}
						?>;
			if(onoff4 == '1') {
				cb[4].checked = "checked";
			}*/			
		}
	</script>

	</head>
	<body onload="load()">
	<div id="colorlib-page">
		<!--<a href="#" class="js-colorlib-nav-toggle colorlib-nav-toggle"><i></i></a>-->
		<aside id="colorlib-aside" role="complementary" class="border js-fullheight">
			<h1 id="colorlib-logo"><a href="index.php">SMART HOME</a></h1>
			<nav id="colorlib-main-menu" role="navigation">
				<ul>
					<li class="colorlib-active"><a href="index.php">Home</a></li>
                    <!--<li><a href="setting.html">Setting</a></li>
					<li><a href="history.php">History</a></li>-->				
				</ul>
			</nav>

            <div class="colorlib-footer">
                <p>
                    <small>
                        &copy; Copyright
                        </span> <span>Demo Images: <a href="www.smarthome.com" target="_blank">www.smarthome.com</a></span>
                    </small>
                </p>
                <ul>
                    <li><a href="#"><i class="icon-facebook2"></i></a></li>
                    <li><a href="#"><i class="icon-twitter2"></i></a></li>
                    <li><a href="#"><i class="icon-instagram"></i></a></li>
                    <li><a href="#"><i class="icon-linkedin2"></i></a></li>
                </ul>
            </div>
		</aside>
		<div id="colorlib-main">
			<div class="colorlib-about">
				<div class="colorlib-narrow-content">
					<div class="row">
						<div class="col-md-6">
							<div class="about-img" style="background-image: url(images/img_bg_2.jpg);">
							</div>
						</div>
						<div class="col-md-6 room">
							<div class="about-desc">
                                <h2 class="colorlib-heading col-md-6">All Rooms</h2>
								<label class="switch">
									<input type="checkbox" onclick="control(0, this)" class="cb">
									<span class="slider round"></span>
								</label>
							</div>
						</div>
						<div class="col-md-6 room">
							<div class="about-desc">
                                <h2 class="colorlib-heading col-md-6">Room 1</h2>
								<label class="switch">
									<input type="checkbox" onclick="control(1, this)" class="cb">
									<span class="slider round"></span>
								</label>
							</div>
						</div>
						<div class="col-md-6 room">
							<div class="about-desc">
                                <h2 class="colorlib-heading col-md-6">Room 2</h2>
								<label class="switch">
									<input type="checkbox" onclick="control(2, this)" class="cb">
									<span class="slider round"></span>
								</label>
							</div>
						</div>
						<div class="col-md-6 room">
							<div class="about-desc">
                                <h2 class="colorlib-heading col-md-6">Room 3</h2>
								<label class="switch">
									<input type="checkbox" onclick="control(3, this)" class="cb">
									<span class="slider round"></span>
								</label>
							</div>
						</div>
						<div class="col-md-6 room">
							<div class="about-desc">
                                <h2 class="colorlib-heading col-md-6">Room 4</h2>
								<label class="switch">
									<input type="checkbox" onclick="control(4, this)" class="cb">
									<span class="slider round"></span>
								</label>
							</div>
						</div>
						<div class="col-md-6">
							<iframe src="./in.html" id="iframe" hidden></iframe>
						</div>
					</div>
				</div>
			</div>
		</div>
		
	<script src="js/jquery.min.js"></script>
	<!-- jQuery Easing -->
	<script src="js/jquery.easing.1.3.js"></script>
	<!-- Bootstrap -->
	<script src="js/bootstrap.min.js"></script>
	<!-- Waypoints -->
	<script src="js/jquery.waypoints.min.js"></script>
	<!-- Flexslider -->
	<script src="js/jquery.flexslider-min.js"></script>
	<!-- Sticky Kit -->
	<script src="js/sticky-kit.min.js"></script>
	<!-- Owl carousel -->
	<script src="js/owl.carousel.min.js"></script>
	<!-- Counters -->
	<script src="js/jquery.countTo.js"></script>
	
	
	<!-- MAIN JS -->
	<script src="js/main.js"></script>
	</body>
</html>
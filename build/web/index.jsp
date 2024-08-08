

<!DOCTYPE html>
<html>

<head>
	<title>Home Page</title>
	<!--/tags -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="keywords" content="Soft Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
	<script type="application/x-javascript">
		addEventListener("load", function () {
			setTimeout(hideURLbar, 0);
		}, false);

		function hideURLbar() {
			window.scrollTo(0, 1);
		}
	</script>
       
	<!--//tags -->
	<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
	<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />

	<link href="css/font-awesome.css" rel="stylesheet">
	<!-- //for bootstrap working -->
	<link href="//fonts.googleapis.com/css?family=Work+Sans:200,300,400,500,600,700" rel="stylesheet">
	<link href='//fonts.googleapis.com/css?family=Lato:400,100,100italic,300,300italic,400italic,700,900,900italic,700italic'
	    rel='stylesheet' type='text/css'>
        
		
</head>

  
<body>
    
	<!-- header -->
         <div class="container-fluid"> 
             <div class="row">
	<div class="header" id="home">
		<div class="content white agile-info">
			<nav class="navbar navbar-default" role="navigation">
                            <div class="col-sm-2"></div>
				<div class="col-sm-2">
					<div class="navbar-header">
						<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
						<a class="navbar-brand" >
                                                    <h1><span class="fa fa-signal" aria-hidden="true">SparkLab</span><label>IT solutions</label> </h1>
                                                 </a> 
                                            </div>
                                     </div>  
                                    <div class="col-sm-8">
                                            <ul class="nav navbar-nav">
                                           <li><a href="index.jsp" class="effect-3" style="font-weight: bold; font-size: 13px;">Home </a></li>
                                           <li><a href="services.html"class="effect-3"  style="font-weight: bold; font-size: 13px;">Services </a></li>
                                           <li><a href="login.jsp" class="effect-3" style="font-weight: bold; font-size: 13px;">Job List</a></li>
					<li><a href="contact.html" class="effect-3" style="font-weight: bold; font-size: 13px;">Contact</a></li>
					<li><a href="single.html" class="effect-3" style="font-weight: bold;font-size: 13px;">About us</a></li>
                                        <li><a href="login.jsp" class="effect-3" style="font-weight: bold; font-size: 13px;">User login</a></li>
                                        <li><a href="admin_login.jsp" class="effect-3" style="font-weight: bold; font-size: 13px;">Admin login</a></li>
                                       
                                            </ul>
                                    </div>
                                       
                        </nav>
</div>
 </div>
        </div>			
        </div>
				
			
		
	
	<!-- banner -->
	<div id="myCarousel" class="carousel slide" data-ride="carousel">
		<!-- Indicators -->
<!--		<ol class="carousel-indicators">
			<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
			<li data-target="#myCarousel" data-slide-to="1" class=""></li>
			<li data-target="#myCarousel" data-slide-to="2" class=""></li>
			<li data-target="#myCarousel" data-slide-to="3" class=""></li>
		</ol>-->
		<div class="carousel-inner" role="listbox">
			<div class="item active">
				<div class="container">
					<div class="carousel-caption">
						<h3>Improving workplace <span>Productivity.</span></h3>
						<p>Hire. Train. Retain.</p>
                                                <br>
						<div class="agileits-button top_ban_agile">
							<a class="btn btn-primary btn-lg" href="single.html">Read More �</a>
						</div>
					</div>
				</div>
			</div>
			<div class="item item2">
				<div class="container">
					<div class="carousel-caption">
						<h3>Inspiring leadership <span>innovation.</span></h3>
						<p>Hire. Train. Retain.</p>
                                                <br>
						<div class="agileits-button top_ban_agile">
							<a class="btn btn-primary btn-lg" href="single.html">Read More �</a>
						</div>
					</div>
				</div>
			</div>
			<div class="item item3">
				<div class="container">
					<div class="carousel-caption">
						<h3>Improving workplace <span>Productivity.</span></h3>
						<p>Hire. Train. Retain.</p>
                                                <br>
						<div class="agileits-button top_ban_agile">
							<a class="btn btn-primary btn-lg" href="single.html">Read More �</a>
						</div>
					</div>
				</div>
			</div>
			<div class="item item4">
				<div class="container">
					<div class="carousel-caption">

						<h3>Inspiring leadership <span>innovation.</span></h3>
						<p>Hire. Train. Retain.</p>
                                                <br>
						<div class="agileits-button top_ban_agile">
							<a class="btn btn-primary btn-lg scroll" href="#welcome" role="button">Read More �</a>
						</div>
					</div>
				</div>
			</div>
		</div>
		<a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
			<span class="fa fa-chevron-left" aria-hidden="true"></span>
			<span class="sr-only">Previous</span>
		</a>
		<a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
			<span class="fa fa-chevron-right" aria-hidden="true"></span>
			<span class="sr-only">Next</span>
		</a>
		<!-- The Modal -->
	</div>
	<!--//banner -->

	<!--/search_form -->
        <form action="index" method="POST">
	<div id="search_form" class="search_top">
		<h2>Start your job search</h2>
                <br>
			<input type="text" name="txt_ddesignationname" placeholder="Enter Designation name" required="">
			<input class="email" name="txt_jlocation" type="text" placeholder="Location" required="">
			<select id="country12" name="txt_jcategory"onchange="change_country(this.value)" class="frm-field required">
														<option> Select Category</option>
														<option >Banking</option>
														<option >Finance</option>
														<option >It</option>
														
														
										</select>
                        
			<input type="submit" name="btn" value="Find Jobs">
                        
			<div class="clearfix"></div>
		</form>
                
	</div>
	<!--//search_form -->
	<div class="banner-bottom">
		<div class="container">
			<div class="tittle_head_w3ls">
				<h3 class="tittle">About Us</h3>
			</div>
			<div class="inner_sec_grids_info_w3ls">
				<div class="col-md-6 banner_bottom_left">
					<h4>Employment opportunities for <span>Professionals</span></h4>
					<p>SparkLapb IT Solutions is an IT company. We are since 2017 in the digital marketing field and remitting the best results to our partners.The SparkLapb IT Solutions is company specifically for people trying to find online jobs. </p>
					<p> We are also recruiting online job seekers to work with us. Our official website www.smartonlinework.com is continuously recruiting new workers to serve with us and earn a sufficient amount for effortless work.</p>
					<br>

					<h3>We Care About Your Life For Better Future.</h3>
					<br>
					<br>
					
					<!-- <ul class="some_agile_facts">
						<li><span class="fa fa-briefcase" aria-hidden="true"></span><label>80</label> Corporate Programs</li>
						<li><span class="fa fa-graduation-cap" aria-hidden="true"></span><label>49</label> Training Courses</li>
						<li><span class="fa fa-user" aria-hidden="true"></span><label>88</label> Strategic Partners</li>
						<li><span class="fa fa-line-chart" aria-hidden="true"></span><label>436</label> Companies We Helped</li>
					</ul> -->
					<h4>Jobs We Offer</h4>

					<div class="col-md-4 footer_grid">
				<ul class="list_4" font-color="black">
							
							<li>Web Developer</li>
							<li>Data Analyst</li>
							<li>Data Scientist</li>
							<li>Software Developer</li>
			</ul>
			</div>
					<div class="clearfix"> </div>
				</div>
				<div class="col-md-6 banner_bottom_right">
					<div class="agileits_w3layouts_banner_bottom_grid">
						<img src="images/ab.png" alt=" " class="img-responsive" />
					</div>
				</div>
				<div class="clearfix"> </div>
			</div>

		</div>
	</div>
	<!-- //banner-bottom -->
	<div class="team_work_agile">
		<h4>Whether we play a large or small role, by working together we achieve our objectives.</h4>
	</div>
	<!-- services -->
	<div class="services" id="services">
		<div class="container">
			<div class="tittle_head_w3ls">
				<h3 class="tittle">Selection Process</h3>
			</div>
			<div class="inner_sec_grids_info_w3ls">
				<div class="col-md-3 services-left">
					<div class="services-left-top">

						<h5>Identify Need & Develop Position Description</h5>

					</div>
					<div class="services-left-top services-left-top1">

						<h5>Recruitment Planning</h5>

					</div>
				</div>
				<div class="col-md-6 services-middle">
					<div class="services-middle-img">
						<img src="images/process.jpg" alt="" />
					</div>
					<div class="services-middle-grids">
						<div class="col-md-6 services-middle-left">
							<div class="services-left-top">

								<h5>Sourcing & Advertising</h5>

							</div>
						</div>
						<div class="col-md-6 services-middle-left">
							<div class="services-left-top">

								<h5>Assess & Interview Candidates</h5>

							</div>
						</div>
						<div class="clearfix"> </div>
					</div>
				</div>
				<div class="col-md-3 services-left">
					<div class="services-left-top">

						<h5>Offer for Student Employment</h5>

					</div>
					<div class="services-left-top services-left-top1">

						<h5>Onboarding for Success</h5>

					</div>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
	<!-- //services -->
	<!-- /mid-services -->
	
		</div>
	</div>
	
	

	<!-- footer -->
	<div class="footer_top_agileits">
		<div class="container">
			<div class="col-md-4 footer_grid">
				<h3>About Us</h3>
				<p>SparkLab IT Solutions is the most innovative online job portal. Founded in 2008, and connects jobseekers and recruiters by accurately matching candidate profiles to the relevant job openings through an advanced technology.
				</p>
			</div>
			<div class="col-md-4 footer_grid">
			</div>
			
			<div class="col-md-4 footer_grid">
				<h3>Contact Info</h3>
				<ul class="address">
					<li><i class="fa fa-map-marker" aria-hidden="true"></i>Back of Desai hospital,PC Patil shishak swanstha, DR.colony Gadhinglaj</li>
<!--					<li><i class="fa fa-envelope" aria-hidden="true"></i><a href="mailto:info@example.com">info@example.com</a></li>-->
					<li><i class="fa fa-phone" aria-hidden="true"></i>8805636454</li>
				</ul>
			</div>
			
			
		</div>
	</div>
	<div class="footer_w3ls">
		<div class="container">
			<div class="footer_bottom">
				<div class="col-md-9 footer_bottom_grid">
					<div class="footer_bottom1">
						<a href="index.jsp">
							<h2><span class="fa fa-signal" aria-hidden="true"></span> SparkLab <label> IT Solutions</label></h2>
						</a>
						<p> All rights reserved | Design by <a href="">SparkLab IT Solutions</a></p>
					</div>
				</div>
<!--				<div class="col-md-3 footer_bottom_grid">
					<h6>Follow Us</h6>
					<div class="social">
						<ul>
							<li><a href="#"><i class="fa fa-facebook"></i></a></li>
							<li><a href="#"><i class="fa fa-twitter"></i></a></li>
							<li><a href="#"><i class="fa fa-rss"></i></a></li>
						</ul>
					</div>
				</div>-->
				<div class="clearfix"> </div>
			</div>

		</div>
	</div>
	<!-- //footer -->

	<a href="#home" class="scroll" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
	<!-- js -->
	<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>

	<script type="text/javascript" src="js/bootstrap.js"></script>
</body>

</html>

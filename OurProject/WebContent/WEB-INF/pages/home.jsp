<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
	
<!DOCTYPE html>
<html>
<head lang="en">
<meta charset="UTF-8">
<title>Home</title>

<link href="/OurProject/resources/bootstrap/css/bootstrap.min.css"
	rel="stylesheet" />
<link href="/OurProject/resources/bootstrap/css/bootstrap-theme.css"
	rel="stylesheet" />
<link href="/OurProject/resources/bootstrap/css/carousel.css"
	rel="stylesheet" />
<script type="text/javascript"
	src="/OurProject/resources/jquery/jquery.js"></script>
<script type="text/javascript"
	src="/OurProject/resources/bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript"
	src="/OurProject/resources/js/canvasjs.min.js"></script>

<style>
.carousel-inner>.item>img, .carousel-inner>.item>a>img {
	width: 70%;
	margin: auto;
}
</style>
<style>
h1 {
	color: red
}

/* h3   {color:red} */
li {
	color: red
}

p {
	color: green
}
</style>
<!-- <style>
.navbar {
    color: #FFFFFF;
    background-color: #CC3333;
}
</style> -->
</head>
<body>


	<nav class="nav navbar-default navbar-inverse">
		<div class="container">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>

			</div>

			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse"
				id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav navbar-right">
					<li id="contact">CALL US ON +1-826-367-6543 |</li>
					<li><a href="sign.html">MY ACCOUNT</a></li>
					<li><a href="login">SIGN IN</a></li>
					<li><a href="search">SEARCH</a></li>
					<li><a href="adduser">CREATE AN ACCOUNT</a></li>
					<li><a href="cart">VIEW CART<span
							class="glyphicon glyphicon-shopping-cart"></span></a>
					<li>
				</ul>


			</div>
			<!-- /.navbar-collapse -->
		</div>
		<!-- /.container-fluid -->
	</nav>



	<div class="container">
		<div class="row">
			<div class="row">
				<div class="col-lg-12">
					<div class="col-lg-6">
						<h1>
							<a id="mainheading" href="/OurProject/">SiRi SHOPPING SITE</a>
						</h1>
					</div>
					<!-- <div class="col-lg-6">
						<div class="pull-right">
							<form method="get" action=" " id="search">
								<input type="text" placeholder="Search FOR A PRODUCT"> <input
									type="" src=" " class="btn">

							</form>
							<input type="text" placeholder="SEARCH FOR A PRODCT"> </div>
						</div>
						pull right div
					</div> -->
				</div>
				<!--col-lg-12-->
			</div>
		</div>


		<!--carousel-->
		<div class="row well">
			<div class="col-md-12 col-md-12 col-md-12">

				<div style="background-color: gray;" class="">
					<ul class="nav navbar-nav">
						<li class="top"><a class="items" href="men">MEN </a></li>
						<li class="top"><a class="items" href="women">WOMEN </a></li>
						<li class="top"><a class="items" href="kids"> KIDS</a></li>
						<li class="top"><a class="items" href="sale">SALE</a>
						<li><br>
						<li class="top"><a class="items" href="#aboutus">ABOUT US</a>
						<li>
						<li class="top"><a class="items" href="#contactus">CONTACT
								US</a>
						<li>
					</ul>
				</div>
				<!--jumb-->

			</div>
			<!--12-->
		</div>
		<!--row-->



		<div class="row">
			<div class="col-md-12">
				<div id="myCarousel" class="carousel slide" data-ride="carousel">
					<!-- Indicators -->
					<ol class="carousel-indicators">
						<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
						<li data-target="#myCarousel" data-slide-to="1"></li>
						<li data-target="#myCarousel" data-slide-to="2"></li>
					</ol>
					<div class="carousel-inner">
						<div class="item active">
							<img
								src="http://blog.dealrocker.com/wp-content/uploads/2012/01/Old-Navy-Coupon.jpeg"
								alt="...">
							<!-- <div class="carousel-caption">
								<h3>Caption Text</h3>
							</div> -->
						</div>
						<div class="item active">
							<img
								src="http://oldnavy.gap.com/Asset_Archive/ONWeb/content/0009/898/907/assets/063015_US_4thofJuly_hp_P_top.jpg"
								alt="...">
							<!-- <div class="carousel-caption">
								<h3>Caption Text</h3>
							</div> -->
						</div>
						<div class="item active">
							<img
								src=" https://www.agacistore.com/on/demandware.static/Sites-agaci-Site/Sites-agaci-Library/default/dw7645fd8c/db_plusdresses_061515-1b.jpg"
								alt="...">
							<!-- <div class="carousel-caption">
								<h3>Caption Text</h3>
							</div> -->
						</div>
						<div class="item">
							<img
								src="http://oldnavy.gap.com/Asset_Archive/ONWeb/content/0009/898/907/assets/063015_US_4thofJuly_hp_P_top.jpg"
								alt="...">
							<!-- <div class="carousel-caption">
								<h3>Caption Text</h3>
							</div> -->
						</div>
						<div class="item">
							<img
								src="http://www.charlotterusse.com/assets/images/cms/Hero_Banner/062415_CB_SummerSale.jpg"
								alt="...">
							<!-- <div class="carousel-caption">
								<h3>Caption Text</h3>
							</div> -->
						</div>
					</div>

					<a class="left carousel-control" href="#myCarousel" role="button"
						data-slide="prev"> <span
						class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
						<span class="sr-only">Previous</span>
					</a> <a class="right carousel-control" href="#myCarousel" role="button"
						data-slide="next"> <span
						class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
						<span class="sr-only">Next</span>
					</a>



				</div>
				<!-- /.carousel -->

			</div>
		</div>
	</div>




	<hr>
	<div class="row">
		<div class="col-lg-12">
			<div class="col-lg-3">
				<h2>
					<small>POPULAR BRANDS</small>
				</h2>
				<ul class="nav nav-pills nav-stacked">
					<li><a href="#">Gap</a></li>
					<li><a href="#">Old Navy</a></li>
					<li><a href="#">Aeropostale</a></li>
					<li><a href="#">Hollister</a></li>
					<li><a href="#">American Eagle</a></li>
					<li><a href="#">H&M</a></li>

				</ul>
			</div>
			<div class="col-lg-3">
				<h2>
					<small>CATEGORIES</small>
				</h2>
				<ul class="nav nav-pills nav-stacked">
					<li><a href="#">T-Shirts</a></li>
					<li><a href="#">Shirts</a></li>
					<li><a href="#">Skirts</a></li>
					<li><a href="#">Kids Wear</a></li>
					<li><a href="#">Jeans</a></li>
				</ul>
			</div>
			<div class="col-lg-3">
				<h2>
					<small>RECENT UPDATES</small>
				</h2>
				<a href="#"><i>contests and promotions</i></a>
				<p>
					<small> Give your customers a heads-up. If you’re going
						to be holding a special …</small>
				</p>
				<a href="#"><i>New stories</i></a>
				<p>
					<small> Share positive press. Did your store receive a
						great review or write-up …</small>
				</p>
				<a href="#"><i>New products</i></a>
				<p>
					<small> Introduce your latest and greatest. Got a new
						product line coming out or …</small>p>
			</div>
			<div class="col-lg-3">
				<h2>
					<small>NEW SETTLER</small>
				</h2>
				<form class="form-vertical" role="form">
					<div class="form-group">
						<label class="control-label " for="name">Your Name:</label>
						<div>
							<input type="email" class="form-control" id="name" placeholder="">
						</div>
						<div class="form-group">
							<label class="control-label " for="Email">Your Email:</label>
							<div>
								<input type="email" class="form-control" id="Email"
									placeholder="">
							</div>
							<br>
							<div class="form-group">
								<div>
									<button type="submit" class="btn">SIGN IN</button>
								</div>
							</div>
						</div>
					</div>
				</form>

				<h3 id="connect">CONNECT WITH US</h3>
				<a href="https://plus.google.com/+bigcommerce/posts"
					class="icon icon-social icon-social-theme icon-googleplus"
					title="GooglePlus">GooglePlus</a> <a
					href="https://www.facebook.com/BigCommerce"
					class="icon icon-social icon-social-theme icon-facebook"
					title="Facebook">Facebook</a>
			</div>
		</div>
	</div>
	<hr>
	<div class="row">
		<div class="col-lg-12">
			<div class="aboutus" id="aboutus">
				<h3>About Us</h3>
				<p></p>
			</div>

		</div>
	</div>
	<div class="row">
		<div class="col-lg-12">
			<div class="contactus" id="contactus">
				<h3>Contact Details</h3>
				<p>contact no:- 1-826-367-6543</p>
			</div>

		</div>
		<div class="col-lg-12">
			<div id="navbar" class="collapse navbar-collapse">
				<ul class="nav navbar-nav">
					<li class="active"><a class="navbar-brand" href="#"><i>Back
								to Home</i></a></li>
				</ul>
			</div>
		</div>
	</div>

</body>
</html>
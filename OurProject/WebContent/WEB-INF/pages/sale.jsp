<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
					<li><a href="createaccount.html">CREATE AN ACCOUNT</a></li>
					<li><a href="cart.html">VIEW CART<span
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
</div>
                  <div class="col-lg-12">
					<div class="row">
						<c:forEach items="${sale}" var="w">
							<div class="col-xs-6 col-md-4">

	<a href="#" class="thumbnail"> 
	<img src="${w.imageurl}" alt="150x150" style="width: 150px; height: 150px;"></a>
	

						
								<div class="caption">
								<h5>${w.name}</h5>
								<h5>$ ${w.price}</h5>
							
						<h5>
										<a href=""></a>
									</h5>
									
								</div>
							</div>
						</c:forEach>


					</div>

				</div>


</body>
</html>
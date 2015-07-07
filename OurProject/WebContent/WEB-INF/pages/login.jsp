<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- <link href="/OurProject/resources/bootstrap/css/bootstrap.min.css"
	rel="stylesheet" /> -->
<link href="/OurProject/resources/bootstrap/css/bootstrap-theme.css"
	rel="stylesheet" />
<link href="/OurProject/resources/bootstrap/css/carousel.css"
	rel="stylesheet" />
<link href="/OurProject/resources/bootstrap/css/bootstrap1.css"
	rel="stylesheet" />
<script type="text/javascript"
	src="/OurProject/resources/jquery/jquery.js"></script>
<script type="text/javascript"
	src="/OurProject/resources/bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript"
	src="/OurProject/resources/js/canvasjs.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
</head>
<body backgorund-image>

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
				<li id="contact">CALL US ON +1 (000) 000-000 |</li>
				<li><a href="#">MY ACCOUNT</a></li>
				<li><a href="login">SIGN IN</a></li>
				<li><a href="adduser">CREATE AN ACCOUNT</a></li>
				<li><a href="cart">VIEW CART<span
						class="glyphicon glyphicon-shopping-cart"></span></a>
				<li>
			</ul>


		</div>
	</div>
	<!-- /.navbar-collapse -->
	<div class="row">
		<div class="container"></div>

		<!-- /.container-fluid -->
	</nav>
	</div>

	<div class="row">
		<div class="col-md-12 col-md-12 col-md-12">


			<ul class="nav navbar-nav">
				<div class="col-lg-12">
					<div class="col-lg-6">
						<h1>
							<a id="mainheading" href="/OurProject/login">SiRi SHOPPING SITE</a>
						</h1>
					</div>
					<div class="col-lg-6">
						<div class="pull-right"></div>
						<!--pull right div-->
					</div>
				</div>
				<!--col-lg-12-->
				<li class="top"><a class="items" href="men">MEN </a></li>
				<li class="top"><a class="items" href="women">WOMEN </a></li>
				<li class="top"><a class="items" href="kids"> KIDS</a></li>
				<li class="top"><a class="items" href="sale">SALE</a>
				<li><br>
				<li class="top"><a class="items" href="#">ABOUT US</a>
				<li>
				
				<li class="top"><a class="items" href="#">CONTACT US</a>
				<li>
			</ul>
		</div>
		<!--jumb-->


	</div>
	<!--row-->




	<div class="container ">
		<div class="row vertical-center-row">
			<div class="col-lg-12">
				<div class="col-xs-4 col-xs-offset-4"
					style="background-image: url(http://lifetoliving.com/wp-content/uploads/2014/07/A06.jpg)">
					<div class="row well">
						<form class="form-signin" method="POST"
							modelattribute="loginAttribute" action="/OurProject/login">
							<h2 class="form-signin-heading">Please Log in</h2>


							<label for="inputEmail" class="sr-only">UserName</label> <input
								type="text" id="inputEmail" path="useremail" name="useremail"
								class="form-control" placeholder="Enter Email here" required
								autofocus>&nbsp; <label for="inputPassword"
								class="sr-only">Password</label> <input type="password"
								id="inputPassword" path="userpassword" name="userpassword"
								class="form-control" placeholder="Password" required>
							<div class="checkbox"></div>
							&nbsp;
							<button class="btn btn-lg btn-primary btn-block" type="submit">Log
								in</button>
						
						</form>
					</div>
				</div>


			</div>
		</div>


	</div>
	</div>



	</div>

</body>
</html>
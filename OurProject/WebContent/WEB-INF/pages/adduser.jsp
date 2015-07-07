<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
	<link href="/OurProject/resources/bootstrap/css/bootstrap1.css" rel="stylesheet" />
<script type="text/javascript"
	src="/OurProject/resources/jquery/jquery.js"></script>
<script type="text/javascript"
	src="/OurProject/resources/bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript"
	src="/OurProject/resources/js/canvasjs.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>New Customer</title>
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
					<li><a href="adduser">MY ACCOUNT</a></li>
					<li><a href="login">SIGN IN</a></li>
					<li><a href="adduser">CREATE AN ACCOUNT</a></li>
					<li><a href="/OurProject/cart/">VIEW CART<span
							class="glyphicon glyphicon-shopping-cart"></span></a>
					<li>
				</ul>


			</div>
			<!-- /.navbar-collapse -->
		</div>
		<!-- /.container-fluid -->
	</nav>
	
	
	    <!-- Collect the nav links, forms, and other content for toggling -->
	    
   <div class="row">
			<div class="row">
				<div class="col-lg-12">
					<div class="col-lg-6">
						<h1>
							<a id="mainheading" href="/OurProject/">SiRi SHOPPING SITE</a>
						</h1>
					</div>
					 
				</div>
				<!--col-lg-12-->
			</div>
		</div>
 
 <div class="row ">
 
    <div class="col-md-12 col-md-12 col-md-12">

        
            <ul class="nav navbar-nav">
             <li class="top" color=red><a class="items" href="men">MEN </a></li>
                <li class="top"><a class="items" href="women">WOMEN </a></li>
                <li class="top"><a class="items" href="kids"> KIDS</a></li>
                <li class="top"><a class="items" href="sale">SALE</a><li> <br>
                <li class="top"><a class="items" href="#">ABOUT US</a><li>
              
                <li class="top"><a class="items" href="#">CONTACT US</a><li>


            </ul>
            </div>
        </div><!--jumb-->

        
        
</nav>

<div class="container">
<div class="col-md-8">

<div class="panel panel-default">
  <div class="panel-heading">
    <h3 class="panel-title">New Customer</h3>
  </div>
  <div class="panel-body">
 <form:form method="POST" modelAttribute="user" action="/OurProject/adduser">
 <br>
 
 
 <div class="input-group">
  <span class="input-group-addon" id="sizing-addon2">First Name</span>
  <input type="text" class="form-control" required="true" placeholder="Enter First Name" aria-describedby="sizing-addon2"/>
</div>

<br>
		<div class="input-group">
  <span class="input-group-addon" id="sizing-addon2">Last Name</span>
  <input type="text" class="form-control" required="true" placeholder="Enter Last Name" aria-describedby="sizing-addon2"/>
</div>	
<br>

<div class="input-group">

  <span class="input-group-addon" id="sizing-addon2">E-mail</span>
  <form:input type="text" class="form-control"  path="useremail" required="true" placeholder="Enter E-mail here..." aria-describedby="sizing-addon2"/>
</div>
<br>

 
<div class="input-group">
  <span class="input-group-addon" id="sizing-addon2">New Password</span>
  <form:input type="password" class="form-control" required="true" path="userpassword" placeholder="*****" aria-describedby="sizing-addon2"/>
</div>


<br>
<div class="input-group">
  <span class="input-group-addon" id="sizing-addon2">Verify Password</span>
  <input type="password" class="form-control" required="true"  placeholder="*****" aria-describedby="sizing-addon2"/>
</div>
<br>

<br>


<br>
 <button type="submit" class="btn btn-danger pull-right">Register</button>
</form:form>
   
  </div>
</div>

</div>
</div>

</body>
</html>
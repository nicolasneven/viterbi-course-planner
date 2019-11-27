<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	<link rel="stylesheet" href="HomePage.css">
	<meta charset="UTF-8">
<style>
* {
  box-sizing: border-box;
}
.menu {
  float: left;
  width: 20%;
}
.button {
  padding: 8px;
  margin-top: 7px;
  background-color: white;
  border-bottom: 1px solid #f1f1f1;
}
.main {
  float: left;
  width: 60%;
  padding: 0 20px;
  background-color: #c70e3a;
  overflow: hidden;
}


@media only screen and (max-width:800px) {
  /* For tablets: */
  .main {
    width: 80%;
    padding: 0;
  }
  .right {
    width: 100%;
  }
}
@media only screen and (max-width:500px) {
  /* For mobile phones: */
  .menu, .main, .right {
    width: 100%;
  }
}
</style>
</head>
<body style="font-family:Verdana; background-color:#ba0b35;">
	<h1>
		<img src="SC_Logo.png" alt="Schedule Builder" height="100">
	</h1>
<div class="header">
	<p><form action = "Login.jsp" id="formA"><button id="Login">Login</button></form> 
	<form action = "Register.html" id="formB"><button id="Register">Register</button></form>
	</p>
				
</div>


<div class="dropdown">
	<div class="form">
		<div class="text">
			<h2> Welcome to Schedule Builder!<h2>
			<br>
			<h4> About: </h4>
			<p>This is a website made to help Computer Science majors at the University of Southern California build their own schedules.This website will guide you through your course requirements and help you build the perfect schedule!</p>
		</div>
		<form class="major-form" action="/Schedule.java" method="post">
			<label for="majorr]">Select a Major</label>
		 	<select class="form-control" name="major" id="major" required>
				<option>CSCI</option>
				<option>CECS</option>
				<option>CSBA</option>
				<option>CSGM</option>
	     	</select>	
	     <button>Select!</button>
	     </form>
</div>
  

</body>
</html>
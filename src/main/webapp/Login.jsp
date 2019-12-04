<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Login</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	<link rel="stylesheet" href="./Login.css">
	<script><% session.setAttribute("message", ""); %></script>
</head>
<body>
	<h1>
		<a href="HomePage.jsp"><img src="SC_Logo.png" alt="Schedule Builder" height="100"></a>
	</h1>
	<div class="welcome">
		Welcome Back! 
	</div>
	<div class="login-page">
	  <div class="form">
	    <form class="login-form" action="Login" method="post">
	      <input type="text" name="username" placeholder="username" required/>
	      <input type="password" name="password" placeholder="password" required/>
	      <button>login</button>
	      <p class="message">Not registered? <a href="Register.html">Create an account</a></p>
	    </form>
	  <h6 id="error" style="margin-top: 10px"><%=session.getAttribute("message")%></h6>
	  </div>
	</div>
</body>
</html>
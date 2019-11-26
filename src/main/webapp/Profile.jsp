<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>My Profile Page</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
</head>
<body onload="update()">
<h2> <%= session.getAttribute("name") %> </h2>
<h3> <%= session.getAttribute("major") %> </h3>
<h4> <%= session.getAttribute("gradyear") %> </h4>
<p id="demo"></p>

<script>
	var txt = "";
	DATA = <%= session.getAttribute("user") %>;
	txt += "<table border='1'>"
	for(i in DATA.schedule) {
		for(j in DATA.schedule[i].classes) {
			var course = DATA.schedule[i].classes[j];
			txt += "<tr><td>" + course.deptcode + " " + course.coursecode + "</td><td>" + course.name + "</td><td><button>Details</button></td></tr>";
		}
	}
	txt += "</table>"    
	document.getElementById("demo").innerHTML = txt;
</script>

</body>
</html>
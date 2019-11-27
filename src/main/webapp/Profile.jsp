<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>My Profile Page</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.20/css/jquery.dataTables.css">
<script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.js"></script>
</head>
<body onload="update()">
<h2> <%= session.getAttribute("name") %> </h2>
<h3> <%= session.getAttribute("major") %> </h3>
<h4> <%= session.getAttribute("gradyear") %> </h4>
<p id="demo"></p>

<script>
	var txt = "<table id='classes' class='display' border='1'><thead><tr><th>Class</th><th>Description</th><th>Details</th></tr></thead><tbody>";
	DATA = <%= session.getAttribute("user") %>;
	for(i in DATA.schedule) {
		for(j in DATA.schedule[i].classes) {
			var course = DATA.schedule[i].classes[j];
			txt += "<tr><td>" + course.deptcode + " " + course.coursecode + "</td><td>" + course.name + "</td><td><button>View</button></td></tr>";
		}
	}
	txt += "</tbody></table>"    
	document.getElementById("demo").innerHTML = txt;
	
	$(document).ready(function() {
	    $('#classes').DataTable();
	} );
</script>

</body>
</html>
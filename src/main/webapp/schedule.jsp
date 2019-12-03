<!DOCTYPE html>
<html lang="en" >
<head>
  <meta charset="UTF-8">
  
  <title>Viterbi Course Plannerl</title>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
  <link href="https://fonts.googleapis.com/css?family=Karla&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="./style.css">
  <script>
  	var user = <%=session.getAttribute("user")%>
  </script>
</head>

<body onload="loadSaved(user);">
  <div class="header">
  	<h1>
  	<a href="HomePage.jsp"><img src="SC_Logo.png" alt="Schedule Builder" height="100"></a>      
  	</h1>
    
  </div>
  <br><br><br>
<div class="main-container">
<div id="test"></div>
	<form> <input type="button" onclick="saveData();" value="Save" style="float: left;"></input> </form>
    
    <table id="course-table" cellspacing="0" cellpadding="0" > <tr> 
      <td> <ul class="columns">
        <li class="column sem1-column">
          <!-- <div class="column-header">
            <h4>Frosh Fall</h4>
          </div> -->
          <ul class="class-list" id="sem1">
          </ul>
        </li>

        <li class="column sem3-column">
          <ul class="class-list" id="sem3">
          </ul>
        </li>
      </ul>
       </td><td><ul class="columns">

        <li class="column sem5-column">
          <ul class="class-list" id="sem5">
          </ul>
        </li>

        <li class="column sem7-column">
          <ul class="class-list" id="sem7">
          </ul>
        </li>
      </ul> </td>
    </tr>
    <tr> 
      <td> <ul class="columns">
        <li class="column sem2-column">
          <ul class="class-list" id="sem2">
          </ul>
        </li>

        <li class="column sem4-column">
          <ul class="class-list" id="sem4">
          </ul>
        </li>
      </ul>
      </td><td>
        <ul class="columns">
        <li class="column sem6-column">
          <ul class="class-list" id="sem6">
          </ul>
        </li>

        <li class="column sem8-column">
          <ul class="class-list" id="sem8">
          </ul>
        </li>
      </ul> </td>
    </tr>

    <tr style="background-color:white;">
      <td style="text-align:center; padding: 10px;vertical-align: bottom;">Major Requirements</td>
      <td style="text-align:center; padding: 10px;vertical-align: bottom;">GE Requirements</td>
    </tr>


    <tr style="background-color:white;" >
      <td>
    <ul class="columns">
      <li class="column major-column">
        <ul class="class-list" id="premajor-reqs">
        </ul>
      </li>

      <li class="column major-column">
        <ul class="class-list" id="lower-division">
        </ul>
      </li>
    </ul> 
  </td>
  <td>
    <ul class="columns">
      <li class="column major-column">
        <ul class="class-list" id="upper-division">
        </ul>
      </li>

      <li class="column ges-column">
        <ul class="class-list" id="general-education">
        </ul>
      </li>
    </ul> 
  </td>
  </tr></table>
</div>

<footer>
  <p></p>
</footer>
<!-- partial -->
  <script src='https://cdnjs.cloudflare.com/ajax/libs/dragula/3.7.2/dragula.js'></script><script  src="./script.js"></script>

</body>
</html>
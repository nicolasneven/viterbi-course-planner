var data; 


/* Dragula JS */
dragula([
  document.getElementById("trash"),
  document.getElementById("sem1"),
  document.getElementById("sem2"),
  document.getElementById("sem3"),
  document.getElementById("sem4"),
  document.getElementById("sem5"),
  document.getElementById("sem6"),
  document.getElementById("sem7"),
  document.getElementById("sem8"),
  document.getElementById("premajor-reqs"),
  document.getElementById("major-reqs"),
  document.getElementById("general-education")
]);
removeOnSpill: false
  .on("drag", function(el) {
    el.className.replace("ex-moved", "");
  })
  .on("drop", function(el, container) {
    el.className += "ex-moved";
    if(container.className == "trash"){
      trash.innerHTML == "";
    }
  })
  .on("over", function(el, container) {
    container.className += "ex-over";
  })
  .on("out", function(el, container) {
    container.className.replace("ex-over", "");
  });


function loadSaved(DATA) {
	data = DATA;
  for(i in DATA.schedule ){
    var section = document.getElementById( DATA.schedule[i].section );
    for(j in DATA.schedule[i].classes){
      var course = DATA.schedule[i].classes[j];
      if(section != null) { 
        section.innerHTML += '<li class="class ' + course.deptcode + '-class" id= ' + course.deptcode + '-' + course.coursecode + '>' +
              '<p>' + course.deptcode + " " + course.coursecode + '</p></li>'
      }
    }
  }
}


function saveData(){
	var json = ' "schedule": [ ';
	var test = document.getElementById("test");
	test.innerHTML = ""; 
	
	
	var containers = document.getElementsByClassName("class-list");
	for (element of containers) {
		
		json += '{ "section": "' + element.id + '", "classes": [';
		var classes = element.querySelectorAll(".class");
		
		for (i of classes){
			var name = i.id;
			var deptcode = name.substring(0, name.indexOf("-"));
			var coursecode = name.substring(name.indexOf("-"));
			json += '{ "deptcode":"' + deptcode + '", "coursecode":'+ coursecode +'},';
		}
		if (classes.size > 0) json = json.substring(0, json.length - 1);
		json += '] },'
		
		/*test.innerHTML += element.id + " " ;
		var classes = element.querySelectorAll(".class");
		//test.innerHTML +=  typeof classes;
		for( i in classes){
			if(classes[i].innerHTML != undefined) test.innerHTML +=  classes[i].innerHTML;
		}*/
	}
	
	/*for( i in containers){
		test.innerHTML += i.id + ": \n";
		var classes = containers.querySelector("li");
		for( j in classes){
			test += classes[j].id + "\n";
		}
	}*/
	
	test.innerHTML = json;
}





/* Vanilla JS to add a new class */
function addclass() {
  /* Get class text from input */
  var inputclass = document.getElementById("classText").value;
  /* Add class to the 'To Do' column */
  document.getElementById("to-do").innerHTML +=
    "<li class='class'><p>" + inputclass + "</p></li>";
  /* Clear class text from input after adding class */
  document.getElementById("classText").value = "";
}

/* Vanilla JS to delete classes in 'Trash' column */
function emptyTrash() {
  /* Clear classes from 'Trash' column */
  document.getElementById("sem4").innerHTML = "";
}


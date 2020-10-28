
var box = document.getElementById("search_container");
var active_box = document.getElementById("search_div");
var header = document.getElementById("header");
var content = document.getElementById("content");
var menu_divd = document.getElementById("menu_divd");
var menu_dive = document.getElementById("menu_dive");
var box_2 = document.getElementById("search_container_box");

  box.addEventListener("click",hide_box);
  active_box.addEventListener("click",show_box);




function show_box(){
  box.style.display = "block";
  header.style.position = "fixed";
  content.style.top = "125px"
  menu_divd.style.display = "none";
  menu_dive.style.display = "none";
  box_2.style.top = "125px";
  event.stopPropagation();
   
}


 function hide_box(){
  e = window.event || e; 
 if(this === e.target) {
  box.style.display = "none";
  header.style.position = "relative";
  content.style.top = "0px"
  menu_divd.style.display = "block";
  menu_dive.style.display = "block";
  box_2.style.top = "-200px";
  event.stopPropagation();
   }
}



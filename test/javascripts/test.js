$(document).ready(function(){
  
})

function addText(){
  $("#container").append("some_text");
}

function addElement(){
  $("#container").append("<div id='new_element'></div>");
}

function makeVisible(){
  $("#hidden").show();
}

function makeHidden(){
  $("#visible").hide();
}
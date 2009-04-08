function addText(){
  $("#container").append("some_text");
}

function addElement(){
  $("#container").append("<div id='new_element'></div>");
}

function removeElement(){
  $("#container").remove();
}

function makeVisible(){
  $("#hidden").show();
}

function makeHidden(){
  $("#visible").hide();
}
var colors = ["green", "blue" , "yellow", "red"];
var horses = ["Ed", "Wilson", "Greg", "Bobby"];



colors.push("purple");

horses.push("Marty");

var the_horses = {};

for (var i = 0; (i<colors.length && i <horses.length); i++){

	the_horses[horses[i]]=colors[i];
}
console.log(the_horses);

function Cars(color, size){

this.color = color;
this.size = size;

this.drive = function(){console.log("ENGINE ON!")};


};

var car = new Cars("red", 4);

console.log ("the " + car.color + " car " + "has a size of " + car.size)

car.drive();
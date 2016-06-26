// RELEASE 0
// Declare a variable with no length (great), then iterate through the string array
// comparing first with this variable, if it is greater in length (which obviously it will be)
// store that array in the variable (great), then the loop will compare the next string with the
// new value of the great variable, after looping through the whole array, the longest string will be
// stored in this variable(great), return that variable!

function longest(array){

var great = ''
for (i=0; i < array.length; i++)

	if (array[i].length > great.length){
		great = array[i];
	}
		return great;
}

console.log("----RELEASE 0------");

console.log(longest(["long phrase","longest phrase","longer phrase"]));
console.log(longest(["long phrase long longer longest","longest phrase a little","longer phrase"]));


function check(object1, object2) {
	var bool = false;
	

	for (var propt in object1) {
		
		if (object1[propt] == object2[propt]) {
			bool = true;
		
			
		}

	}
	return bool;
}

 
console.log("----RELEASE 1------");
console.log(check({horse: "Marty", color: "blue"}, {horse: "Bobby", color: "blue"}))
// different keys
console.log(check({horse: "Marty", color_different: "blue"}, {horse: "Bobby", color: "blue"}))
// different values
console.log(check({horse: "Marty", color: "red"}, {horse: "Bobby", color: "blue"}))



console.log("----RELEASE 2----")


//create a random char 
function random_char() {
	var alphabet = "abcdefghijklmnopqrstuvqxyz";
	var random_number_chars = Math.floor(Math.random()*25+1);
	return alphabet[random_number_chars];
}

// create a string of random length (1-10) with random chars
function random_word() {
	var string = "";
	var random_number_word = Math.floor(Math.random()*10+1);
	for (var i=0; i<random_number_word; i++) {
		string += random_char();
	}
	return string;
}

// create an array of random length (user input) with random strings 

function newArray(number){
var array=[];
for (i=0; i<number; i++){
array[i] = random_word();
}
return array;
}
 //print the array of random length of strings of random chars and random length
cont=0;
 while (cont<10){
 var new_random_array = newArray(3)
console.log(new_random_array);

console.log("LONGEST:" +longest(new_random_array));
cont++;
}






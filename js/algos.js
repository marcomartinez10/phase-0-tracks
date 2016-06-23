// RELEASE 0
// Check what word is longer in the array, store that word in a variable and check with
// the next word and so on

function longest(array){

var great = ''
for (i=0; i < array.length; i++)

if (array[i].length > great.length){

	great = array[i];
}
return great;

}

function check(object1, object2) {
	var bool = false;

	for (var i in object1) {
		
		if (object1[i] == object2[i]) {
			
			bool = true;
		}
	}
	return bool;
}

function newArray(number){

	//create array of random number

array = array[number];

// create a random number between 1 and 10

var random = Math.floor((Math.random() * 10) + 1);

var charset = "abcdefghijklmnopqrstuvwxyz";

for (j=0; j<number; j++){
var string = '';


for (i=0; i < random; i++){

var string = string + charset.charAt((Math.random() * 20) + 1);

}
array.push(string);
}


console.log(array);


}

newArray(3);


console.log(longest(["long phrase","longest phrase","longer phrase"]));

console.log(check({horse: "Marty", color: "blue"}, {horse: "Bobby", color: "blue"}));
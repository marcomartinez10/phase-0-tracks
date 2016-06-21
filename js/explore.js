// go through the string backwards and putting the letters in another string,
// the string will be the word backwards!

function reverse(string) {
var resultado = '';
for (var i = string.length -1; i >= 0; i--)
	resultado += string[i];
	return resultado;
}


var reversed = reverse("Hello");
if (1 == 1) {
	console.log(reversed)
}
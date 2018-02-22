var n1 = 10;
var n2 = 16.3;
var n3 = 13.6;

console.log(typeof n1.toString());
console.log(typeof n1);
console.log(typeof n2);
console.log(10 == 10.0);

console.log(n1.toString());
console.log(String(n1));

// string to number

var n4 = "10";
var n5 = 16.3;

console.log(parseInt(n4));
console.log(Number(n4));
console.log(parseInt(n5));
console.log(Number(n5));
console.log(parseFloat(n5));
console.log(typeof parseFloat(n5));
console.log(parseFloat(n4));
console.log(typeof parseFloat(n4));

//NaN Not a Number

console.log(Number.isNaN(10));
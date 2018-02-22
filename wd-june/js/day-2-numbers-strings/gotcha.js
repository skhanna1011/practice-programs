var x = true;
var y = false;
console.log(Number(x));
console.log(Number(y));
console.log(1 == true);
console.log(0 == false);
console.log(0 == true);
console.log(1 === true);

var z = "10 20"
console.log(Number(z));
console.log(parseInt(z));
console.log(parseInt("10 years"));
console.log(parseInt("year 10"));

console.log(5 + 5);
console.log("5" + 5);
console.log(5 + "5");
console.log(5 + 5 + "5");
console.log("5" + 5 + 5);
console.log("5" + (5 + 5));

var a = 123456789012345;
var b = 12345678901234567890;

console.log(a);
console.log(b);

var a = 0.1;
var b = 0.2;

console.log(a+b);
console.log((a * 10 + b * 10)/10);
console.log((a + b).toPrecision(1));
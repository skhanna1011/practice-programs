var numbers = [10,20,30,12,15,50];

var result = numbers.find(function(n){return n > 15});
console.log(result);

var result = numbers.find(function(n){return n > 55});
console.log(result);

var result = numbers.filter(function(n){return n > 15 });
console.log(result);

var result = numbers.filter(function(n){return n > 55});
console.log(result);
Array.prototype.count = function(n) {
  var count = 0
  this.forEach(function(num){
    if(num == n){
      count++;
    }
  });
  return count;
};
var numbers = [10,20,30,10,20,10];
var names = [];

console.log(numbers.count(10))

Array.prototype.isEmpty = function() {
 return (this.length == 0)
};

console.log(numbers.isEmpty());
console.log(names.isEmpty());

Array.prototype.uniq = function() {
  var result = [];
  this.forEach(function(num){
    if(result.find(function(n){ return n == num }) == undefined){
      result.push(num);
    }
  });
  return result;
};

console.log(numbers.uniq());

Array.prototype.last = function() {
  return this[(this.length)-1];
};

console.log(numbers.last());
function add() {
  var sum = 0
  for(key in arguments){
    sum += arguments[key];
  }
  return sum;
}
console.log(add(10,20));
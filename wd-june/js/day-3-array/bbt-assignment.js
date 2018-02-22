function doubleCola(array,num) {
  var i = 0
  while(i < num){
    var name = array.shift();
    array.push(name,name);
    i++;
  }
  return array[0]
}

var names = ["Sheldon", "Leonard", "Penny", "Rajesh", "Howard"];
console.log(doubleCola(names,6));
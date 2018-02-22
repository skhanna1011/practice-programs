function unique(numbers){
  var result = [];
  numbers.forEach(function(n){
    if(result.indexOf(n) < 0){
      result.push(n);
    }
  });
  return result;
}

console.log(unique(numbers));

names.forEach(function(name){
  console.log(name.toUpperCase());
});
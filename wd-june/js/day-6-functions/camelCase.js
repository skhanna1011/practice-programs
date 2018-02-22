String.prototype.camelCase = function() {
  var arr = this.split(" ");
  var result = [];
  arr.forEach(function(word){
    result.push(word)
  });
};
String.prototype.capitalize = function(){
  return this.charAt(0).toUpperCase() + this.slice(1).toLowerCase;
}
function hashtagGenerator(text) {
  var result = [];
  var arr = text.split(" ").forEach(function(word){
    word = word.capitalize();
    result.push(word);
  });
  return "#" + result.join("");
}
console.log(hashtagGenerator(" Hello there thanks for trying my Kata"));
console.log(hashtagGenerator(" Hello World "));
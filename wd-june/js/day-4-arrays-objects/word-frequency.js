Array.prototype.count = function(n) {
  var count = 0
  this.forEach(function(num){
    if(num == n){
      count++;
    }
  });
  return count;
};

Array.prototype.uniq = function() {
  var result = [];
  this.forEach(function(num){
    if(result.find(function(n){ return n == num }) == undefined){
      result.push(num);
    }
  });
  return result;
};
var str = "virat virat sachin sachin dhoni virat";
var players = str.split(" ");
var players_hash = {};
players.uniq().forEach(function(player){
  players_hash[player] = players.count(player);
});
for(var key in players_hash){
  console.log(key + " " + "*".repeat(players_hash[key]));
}
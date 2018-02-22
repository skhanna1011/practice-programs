var str = "virat virat sachin sachin dhoni virat";
var players = str.split(" ");
var players_hash = {};
players.forEach(function(player){
  if(!(player in players_hash)){
    players_hash[player] = players.filter(function(p){return p == player;}).length;
  }
});

for(var key in players_hash){
  console.log(key + " " + "*".repeat(players_hash[key]));
}
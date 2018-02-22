function countWins(stats, country) {
  var result = {};
  stats.forEach(function(stat){
    if(stat['country'] == country){
      if(stat['team'] in result){
        result[stat['team']]++;
      }
      else{
        result[stat['team']] = 1;
      }
    }
  });
  return result;
}

function winner(stats, season) {
  var result = '';
  stats.forEach(function(stat){
    if(stat.season == season){
      result = stat.team;
    }
  });
  return result;
}

Object.prototype.prettyPrint = function() {
  if(Object.keys(this).length == 0){
    console.log("No teams from this country has won")
  }
  else{
    for(key in this){
      if(typeof this[key] != 'function'){
        console.log(key + " won " + this[key] + " times.");
      }
    }
  }
};

const winnerList1 = [
{season: '1999-00', team: 'Real Madrid', country: 'Spain'},
{season: '2000-01', team: 'Bayern Munich', country: 'Germany'},
{season: '2001-02', team: 'Real Madrid', country: 'Spain'},
{season: '2002-03', team: 'Milan', country: 'Italy'},
{season: '2003-04', team: 'Porto', country: 'Portugal'},
{season: '2004-05', team: 'Barcelona', country: 'Spain'}
]

countWins(winnerList1, 'Spain').prettyPrint();
countWins(winnerList1, 'Portugal').prettyPrint();
countWins(winnerList1, 'Scotland').prettyPrint();

// console.log(winner(winnerList1, '2000-01'));
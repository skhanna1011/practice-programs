function formatDuration(time){
  var hrs, mins, secs;

  hrs = Math.floor(time / 3600);
  mins = Math.floor((time - hrs * 3600)/60);
  secs = Math.floor(time - (hrs * 3600 + mins * 60));

  return `Hours : ${hrs} - Minutes : ${mins} - Seconds : ${secs}`;
}

function leadingZero(no){
  return ("0" + no).slice(-2)
}

function formatTime(time){
  var hrs, mins, secs;

  hrs = leadingZero(Math.floor(time / 3600));
  mins = leadingZero(Math.floor((time - hrs * 3600)/60));
  secs = leadingZero(Math.floor(time - (hrs * 3600 + mins * 60)));

  return `${hrs}:${mins}:${secs}`;
}

console.log(formatDuration(62));
console.log(formatDuration(3662));

console.log(formatTime(62));
console.log(formatTime(3662));
console.log(formatTime(4000));
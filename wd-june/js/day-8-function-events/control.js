var positionHandle = document.getElementById('position');
positionHandle.innerHTML = atom.position();

var inputs = [];
var inputHandle = document.getElementById('input');

document.addEventListener('keydown', function(e){
  if(e.keyCode == 37){
    positionHandle.innerHTML = atom.left();
    inputs.push("left");
  }
  else if(e.keyCode == 39){
    positionHandle.innerHTML = atom.right();
    inputs.push("right");
  }
  else if(e.keyCode == 38){
    positionHandle.innerHTML = atom.move();
    inputs.push("up");
  }
});
inputHandle.innerHTML = inputs;
console.log(inputs);
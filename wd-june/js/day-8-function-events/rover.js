const ORIENTATION = {
  N: {
    R: "E",
    L: "W"
  },
  E: {
    R: "S",
    L: "N"
  },
  W: {
    R: "N",
    L: "S"
  },
  S: {
    R: "W",
    L: "E"
  }
};

function Rover(details) {
  this.name = details.name
  this.xaxis = details.xaxis
  this.yaxis = details.yaxis
  this.face = details.face

  this.position = function() {
    return `${this.name} - (${this.xaxis},${this.yaxis},${this.face.toUpperCase()})`
  };

  this.left = function() {
    this.face = ORIENTATION[this.face]["L"];
    return this.position();
  };

  this.right = function() {
    this.face = ORIENTATION[this.face]["R"];
    return this.position();
  };

  this.move = function() {
    if(this.face == "N"){
      this.yaxis += 1;
    }
    else if(this.face == "E"){
      this.xaxis += 1;
    }
    else if(this.face == "W"){
      this.xaxis -= 1;
    }
    else if(this.face == "S"){
      this.yaxis -= 1;
    }
    return this.position();
  };
}

var atom = new Rover({
  name: "Atom",
  xaxis: 1,
  yaxis: 2,
  face: "N"
});
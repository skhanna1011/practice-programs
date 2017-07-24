function hero(name, behavior){
  alert("Hero is called");
  this.name = name;
  this.behavior = behavior;
  this.showName = function(){
    alert(this.name);
  }
}
var ob = new hero("Superman", "v-porwerfull");
ob.showName();
var ob = new hero("Batman", "Billionaire Techie Strong");
ob.showName();
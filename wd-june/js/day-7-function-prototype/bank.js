function Customer(name, accNo, balance){
  this.name = name;
  this.accNo = accNo;
  this.balance = balance;

  this.showDetails = function(){
    return "Name: " + this.name + " has balance " + this.balance + " in account " + this.accNo;
  }

  this.transaction = function(ammount, code){
    if(code === 1){
      this.balance += ammount;
    }
    else{
      this.balance -= ammount;
    }
    console.log(this.showDetails());
    return this.balance;
  }
}

 var c1 = new Customer("Ravi", "123", 1000);
console.log(c1.showDetails());
console.log(c1.transaction(1000, 1));
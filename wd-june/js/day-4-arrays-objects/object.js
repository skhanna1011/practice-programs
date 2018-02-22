var person = {
  firstName: "Shivam",
  lastName: "Khanna"
}
console.log(person);
console.log("The first name is " + person.firstName);

person.title = "Mr."
person["middleName"] = "Ravindra"
console.log(person);
console.log(person.title + " " +person.firstName+ " " + person.middleName + " " + person.lastName);

var players = {
  virat: 3,
  sachin: 2,
  dhoni: 1
}

for(var key in players){
  console.log(key + " appears " + players[key] + " times.");
}
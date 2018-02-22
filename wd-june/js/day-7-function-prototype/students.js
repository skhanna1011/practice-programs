function Student() {
  this.name;
  this.age;
  this.gender;
  this.medals = [];
}

var s1 = new Student();
console.log(s1);
console.log(s1.name);
s1.name = "Ravi";
s1.age = "10";
s1.gender = "m"
s1.medals = ["1st in race", "football"];
s1.capitan = false;
console.log(s1);

var s2 = new Student();
s2.name = "Sheetal";
s2.age = "12";
s2.gender = "f"
console.log(s2);
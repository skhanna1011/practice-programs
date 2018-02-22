function persistance(num) {
  if(num < 10){
    return 0;
  }
  while(num > 10){
    num = String(num).split("").map(Number).reduce((a,b) => a*b);
  }
  return num;
}
console.log(persistance(39));
console.log(persistance(999));
console.log(persistance(4));
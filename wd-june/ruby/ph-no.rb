nums = [1,2,3,4,5,6,7,8,9,0]
str = nums.join
puts "(#{str.slice(0,3)}) #{str.slice(3,3)}-#{str.slice(6,4)}"
#Alternatively
 puts "(#{nums.slice(0,3).join}) #{nums.slice(3,3).join}-#{nums.slice(6,4).join}"
nums = [10, 9, 10 , 8, 15 ,19]
even = nums.find_all {|num| num.even?}
odd = nums.find_all {|num| num.odd?}
puts "Sum of even #{even.inject(:+)}"
puts "Sum of odd #{odd.inject(:+)}"
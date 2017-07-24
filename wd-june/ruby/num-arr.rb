numbers = [10,20,3,25]
min = numbers.first
max =numbers.first
sum = 0
odd_sum = 0
numbers.each do |number|
  min = number if number < min
  max = number if number > max
  sum += number
  odd_sum += sum if number%2 != 0
end
puts "Minimum is #{min}"
puts "Maximum is #{max}"
puts "Sum is #{sum}"
puts "Average is #{sum.to_f/numbers.length}"
puts "Sum of odd no's. is #{odd_sum}"
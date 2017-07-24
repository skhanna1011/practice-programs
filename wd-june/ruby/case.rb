n1 = 10
n2 = 20
puts "Enter the operation you want to perform"
opt = gets.chomp
case opt
when "+"
  puts n1 + n2
when "-"
  puts n1 - n2
when "/"
  puts n1 / n2
when "*"
  puts n1 * n2
else
  puts "Invalid Operation"
end
numbers = []
puts "Enter 10 no's"
10.times{numbers << gets.to_i}
puts "Enter the no to search"
num_to_search = gets.to_i
times = 0
numbers.each {|number| times += 1 if num_to_search == number }
if times == 0
  puts "No not  found"
else
puts times
end
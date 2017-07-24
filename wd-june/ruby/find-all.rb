nums = [10, 20, 30, 40, 50, 10, 20]
puts "Enter the no to search"
search = gets.to_i
result = nums.find_all {|num| num == search}
if result.empty?
  puts "The #{search} number not found"
else
  puts "The #{search} number is found #{result.length} times"
end
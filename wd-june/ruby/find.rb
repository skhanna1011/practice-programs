nums = [10, 20, 30, 40, 50]
puts "Enter the no to search"
search_no = gets.to_i
result = nums.find {|num| num == search_no}
if result.nil?
  puts "#{search_no} not found"
else
  puts "#{search_no} found"
end
names = ["a", "b", "c", "d"]
puts "Enter the name to search"
search_str = gets.chomp
result = names.find {|name| name == search_str}
if result.nil?
  puts "#{search_str} not found"
else
  puts "#{search_str} found"
end
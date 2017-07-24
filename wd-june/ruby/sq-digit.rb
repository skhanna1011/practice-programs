puts "Enter a string of no's"
arr = gets.chomp.split("")
arr.map! do |item| 
  item = item.to_i
  item*item
end
puts arr.join
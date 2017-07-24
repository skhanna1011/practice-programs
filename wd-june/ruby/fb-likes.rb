likes = gets.chomp.split(" ")
if likes.empty?
  puts "no one likes this"
elsif likes.length == 1
  puts "#{likes[0]} likes this"
elsif likes.length == 2
  puts "#{likes[0]} and #{likes[1]} likes this"
else
  puts "#{likes[0]},#{likes[1]} and #{likes.length-2} likes this"
end
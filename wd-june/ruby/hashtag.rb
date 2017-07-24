#output = #Sentance
puts "Enter a Sentance"
sentance = gets.chomp
if sentance == ""
  puts "False"
else
  words = sentance.split(" ")
  output = "#"
  words.each do |word|
    output = output +word.capitalize
  end
  if output.length <= 140
    puts output
  else
    puts "False"
  end
end
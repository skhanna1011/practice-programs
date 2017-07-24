puts "Enter the sentance"
words = gets.chomp.sentance.split(" ")
shortest_word_length = words.first.length
words.each.with_index { |word,i| shortest_word_length = word.length if word.length < shortest_word_length}
puts shortest_word_length
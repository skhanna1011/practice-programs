sentence = "Now is the time for all good people"
sentence_arr = sentence.downcase.split("")
vowels_arr = []
vowels_hash = {
  :a => 0,
  :e => 0,
  :i => 0,
  :o => 0,
  :u => 0,
}
sentence_arr.each do |letter|
  case letter
  when "a","e","i","o","u"
    vowels_arr << letter
  end
end
vowels_arr.sort!
puts vowels_arr.length
puts vowels_arr.uniq.to_s
vowels_arr.uniq.each { |vowel|puts "#{vowel} : #{vowels_arr.count(vowel)}"}
sentence_arr.each do |letter|
  case letter
  when "a"
    vowels_hash[:a] += 1
  when "e"
    vowels_hash[:e] += 1
  when "i"
    vowels_hash[:i] += 1
  when "o"
    vowels_hash[:o] += 1
  when "u"
    vowels_hash[:u] += 1
  end
end
puts "Total vowels : #{vowels_hash.values.inject(:+)}"
puts "Unique vowels : #{vowels_hash.select {|k,v| v != 0}.keys.join(",")}"
puts vowels_hash
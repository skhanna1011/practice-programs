def hash_tag_generator(str)
  if str.length < 140 && !str.empty?
    arr = str.split(" ").map {|word| word.capitalize}
    return "##{arr.join}"
  else
    return "false"
  end
end
puts "Enter the hashtag"
puts hash_tag_generator(gets.chomp)
str = "Hey fellow warriors"
output = str.split(" ").map do |word|
  if word.length >= 5 
    word = word.reverse
  else
    word = word
  end
end
puts output.join(" ")
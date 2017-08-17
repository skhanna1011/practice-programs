numbers = (0..9).to_a
alphabets = ("A".."z").to_a
special_char = ("!".."+").to_a
puts "Minimum length of the password"
password_length = gets.to_i
puts "Minimum number of numbers"
numbers_count = gets.to_i
puts "Minimum number of special characters"
special_char_count = gets.to_i
alphabets_count = password_length - numbers_count - special_char_count
5.times do
  password = numbers.shuffle.take(numbers_count) + special_char.shuffle.take(special_char_count) + alphabets.shuffle.take(alphabets_count)
  puts password.shuffle.join
end
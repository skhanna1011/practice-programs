numbers = (0..9).to_a
alphabets = ("A".."z").to_a
special_char = ("!".."+").to_a
password_length = rand(8..16)
alphabets_count = rand(8..16)
special_char_count = rand(1..8)
numbers_count = rand(1..8)
5.times do
  password = numbers.shuffle.take(numbers_count) + alphabets.shuffle.take(alphabets_count) + special_char.shuffle.take(special_char_count)
  puts password.shuffle.take(password_length).join
end
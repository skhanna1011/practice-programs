given = 463278
binary = given.to_s.split("")
binary.map! do |num|
  num = num.to_i
  num = case
  when num < 5
    0
  else
    1
  end
end
puts binary.join
def high_low(string)
  arr = string.split(" ").map{|num| num.to_i}
  "#{arr.max} #{arr.min}"
end
puts high_low("1 2 3 4 5")
puts high_low("1 2 -3 4 5")
puts high_low("1 9 3 4 -5")
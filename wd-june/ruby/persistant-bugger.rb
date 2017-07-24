num = 234
while num > 9
  num = num.to_s.split("").map{|n| n.to_i}.inject(:*)
end
puts num
def scramble(str1, str2)
  result = nil
  str2.split("").uniq.each do |chr|
    if str2.count(chr)<=str1.count(chr)
      result = true
    else
      result = false
      break
    end
  end
  return result
end
puts scramble("rkqodlw", "world")
puts scramble("katas", "steak")
puts scramble("dorfd", "food")
colors = [["white", "goodness"], ["blue", "calm"]]
colors_hash = {}
colors .each do |item|
  colors_hash[item[0].to_sym] = item[1]
end
puts colors_hash
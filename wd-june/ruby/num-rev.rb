numbers = 348597
output = []
numbers.to_s.reverse.split("").each {|num| output << num.to_i}
puts "Output = #{output}"
puts output.join
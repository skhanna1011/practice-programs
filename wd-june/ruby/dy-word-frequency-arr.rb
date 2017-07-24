players = "virat virat virat sachin sachin rahul dhoni dhoni"
names = players.split(" ")
result = []
names.uniq.each do |name|
  result << [name, names.count(name)]
end
result.each {|item| puts "#{item[0]} - #{"*" * item[1]}"}
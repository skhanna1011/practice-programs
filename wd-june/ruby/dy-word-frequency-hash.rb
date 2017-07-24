players = "virat virat virat sachin sachin rahul dhoni dhoni"
names = players.split(" ")
result = {}
names.uniq.each do |name|
  result[name.to_sym] = names.count(name)
end
result.each {|name, times| puts "#{name} - #{"*" * times}"}
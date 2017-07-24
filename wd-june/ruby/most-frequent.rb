#find count of most frequent item in an array
players = "virat virat virat sachin sachin rahul dhoni dhoni"
names = players.split(" ")
result = {}
names.uniq.each do |name|
  result[name] = names.count(name)
end
count = 0
result.each {|name, times| count = times if times > count }
puts "#{result.key(count)} - #{count}"
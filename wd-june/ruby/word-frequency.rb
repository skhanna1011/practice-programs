players = "virat virat virat sachin sachin rahul dhoni dhoni"
virat_count = 0
sachin_count = 0
rahul_count = 0
dhoni_count = 0
names = players.split(" ")
virat_count = names.count("virat")
sachin_count = names.count("sachin")
rahul_count = names.count("rahul")
dhoni_count = names.count("dhoni")
puts "Virat - #{"*" * virat_count}"
puts "Sachin - #{"*" * sachin_count}"
puts "Rahul - #{"*" * rahul_count}"
puts "Dhoni - #{"*" * dhoni_count}"
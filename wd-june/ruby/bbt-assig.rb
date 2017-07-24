names = ["Sheldon", "Leonard", "Penny", "Rajesh", "Howard"]
puts "Enter the instance"
instance = gets.to_i
i=1
while i <= instance do
  drinker = names.shift
  2.times{names << drinker}
  i += 1
end
puts drinker
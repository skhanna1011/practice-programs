puts "Enter the no"
max = gets.to_i
no = 1
sum =  0
while no <= max
  if no% 3 == 0 || no% 5 == 0
    puts no
		sum += no
  end
	no += 1
end
puts sum
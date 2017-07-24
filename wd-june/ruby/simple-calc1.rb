puts "Enter your name"
name = gets.chomp # gets:- get-string (n1returns string) .chomp:-strips the /n(newline char)
puts "Welcome "+ name
puts "Enter the value"
n1 = gets.to_i # type conversion to_i (to integer)
puts "Enter the value"
n2 = gets.to_f # type conversion to_f (to float)
puts n1 + n2
if n1 == n2
	puts 10
else

	puts 20
end
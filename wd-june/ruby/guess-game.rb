puts "Please! Enter your Name" 
name = gets.chomp
puts "Welcome " + name
num = rand(1..100)
guess_no = 1
max_guess = 10
pre_guess1 = 1
pre_guess2 = 100
puts "Guess a no. between 1-100"
guess = gets.to_i
while guess_no < max_guess
	if guess == num
		puts "Good Job, #{name}! You guessed my no in #{guess_no} guesses!"
		break
	elsif guess < num
		puts "Oops! Your guess was LOW, no of guess left #{max_guess-guess_no}."
		pre_guess1 = guess
		guess_no += 1
	elsif guess > num
		puts "Oops! Your guess was HIGH, no of guess left #{max_guess-guess_no}."
		pre_guess2 = guess
		guess_no += 1
	end
	puts "Guess my no between #{pre_guess1} - #{pre_guess2}"
	guess = gets.to_i
end
if guess_no == max_guess
	puts"Sorry, You didn't get my no. My no. was #{num}"
end
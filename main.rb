require '../skill_tests/lib/random_60.rb'
require '../skill_tests/lib/adder.rb'

puts "Which program do you want to start?
	\nEnter:
	Adder		choose a number and an option to modify it by
	Random		random numbers between -10 and 10, and their percentages
		or
	Exit		exit the program"
request = gets.downcase.chomp

until request == 'adder'||request == 'random'||request == 'exit'
	puts 'That is not a valid answer'
	request = gets.chomp
end
if request == 'adder'
	run = Adder.new
	run.get_numbers
elsif request == 'random'
	run = Random_60.new
	run.view
elsif request == 'exit'
	exit
end
	

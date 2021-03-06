require '../skill_tests/lib/random_60.rb'
require '../skill_tests/lib/adder.rb'
require '../skill_tests/lib/gas.rb'
require '../skill_tests/lib/flip.rb'
require '../skill_tests/lib/sentence.rb'
require '../skill_tests/lib/score.rb'

def ask question
	puts question
	request = gets.downcase.chomp

	if request == 'adder'
		run = Adder.new
		run.get_numbers
	elsif request == 'random'
		run = Random_60.new
		run.view
	elsif request == 'gas'
		run = Gas.new
		run.calculate
	elsif request == 'flip'
		run = Flip.new
		run.flip_out
	elsif request == 'string'
		run = Sentence.new
		run.string
	elsif request == 'score'
		run = Score.new
		run.start
	elsif request == 'exit'
		exit
	else
		puts "\nI do not understand that."
		ask question
	end
end
puts
ask "Which program do you want to start?\nEnter:
	Adder		choose a number and an option to modify it by
	Random		random numbers between -10 and 10, and their percentages
	Gas		calculate your rental cars gas consumption
	Flip		reverse the numbers you enter
	String		Type in a sentence, and get facts
	Score		enter players and stats
		or
	Exit		exit the program"
require '../skill_tests/lib/random_60.rb'
require '../skill_tests/lib/adder.rb'

puts "Which program do you want to start? \n adder or random 60"
request = gets.downcase.chomp

until request == 'adder'||request == 'random 60'||request == 'exit'
	puts 'That is not a valid answer'
	request = gets.chomp
end
if request == 'adder'
	run = Adder.new
	puts run.view
elsif request == 'random 60'
	run = Random_60.new
	run.view
elsif request == 'exit'
	exit
end
	

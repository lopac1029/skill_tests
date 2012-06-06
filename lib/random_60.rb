# http://www.daniweb.com/software-development/cpp/threads/423124/series-of-easy-coding-exercises-with-code-snippet-solutions#post1806759
class Random_60
	def get_random
		# Empty array
		@numbers = []

		# 60 random numbers between -10 and 10
		60.times {@numbers.push rand(-10..10)}

		# Seperate the positves, negatives, and zeros to arrays
		@negative = @numbers.select{|x| x < 0}
		@positive = @numbers.select{|x| x > 0}
		@zero = @numbers.select{|x| x == 0}
	end
	
	def percent (variable, total)
		percent = ((100 * variable.length) / total.length).to_s

		if variable.first == 0 || variable.first == nil
			puts percent.to_s + '% of the numbers are zeros.'
		elsif variable.first < 0
			puts percent.to_s + '% of the numbers are negative.'
		elsif variable.first > 0
			puts percent.to_s + '% of the numbers are positive.'
		end
	end
	def view
		get_random

		puts "\nThe " + @numbers.length.to_s + " numbers that are randomly choosen are"
		puts @numbers[0..19].join(', ')
		puts @numbers[20..39].join(', ')
		puts @numbers[40..59].join(', ')
		puts "\nThere are "+@positive.length.to_s+" positive numbers (not including 0), and they are\n"+@positive.join(', ')
		puts "\nThere are "+@negative.length.to_s+ " negative numbers, and they are\n"+@negative.join(', ')
		puts "\n________________________________________\n\n"
		percent(@positive, @numbers)
		percent(@negative, @numbers)
		percent(@zero, @numbers)
		puts "\n\n"	
	end
end
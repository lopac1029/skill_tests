class Adder
	def get_numbers
		puts "\nPlease enter a number of 20 or greater."
		number = gets.chomp.to_i

		until number > 19
			puts "\nYou entered #{number}, which is not equal to or greater than 20.\nPlease choose again correctly." 
			number = gets.chomp.to_i
		end
		if number >= 20
			puts "\nPlease chose an option of 1, 2, or 3."
		end
		option = gets.chomp.to_i
		until option.between?(1, 3)
			puts "\nYou did not choose a correct option.\nPlease choose again correctly."
			option = gets.chomp.to_i
		end
		if option == 1
			int=((number*number)-(option*option)+number+option)/2;
			puts "\nThe sum of all numbers between 1 and #{number} is #{int}.\n\n"
		elsif option == 2
			puts "\nThe odd numbers from 1 to #{number} are:"
			x = 1
			array = []
			while x <= number
				array << x
				x=x+2
			end
			puts array.join(', ')
			puts
		elsif option == 3
			puts "\nThanks for entering number #{number}! Option #{option} does nothing.\n\n"
		end
	end
end
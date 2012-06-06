#http://www.daniweb.com/software-development/cpp/threads/423124/series-of-easy-coding-exercises-with-code-snippet-solutions#post1806762

class Gas
	def calculate
		puts "\nGive numerical milage (or enter -1 to exit the program):"

		miles = gets.chomp.to_i

		if miles <= (-1)
			exit 
		elsif miles != (-1)
			consum = 0
			puts "\nGive number of gallons that are consumed"
			gal = gets.chomp.to_i
			consum = (100*gal)/miles 
			puts "\nAverage consumption at 100 miles is #{consum} gal\n\n"

			calculate
		end
	end
end
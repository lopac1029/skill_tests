#http://www.daniweb.com/software-development/cpp/threads/423124/series-of-easy-coding-exercises-with-code-snippet-solutions#post1806767

class Flip
	def flip_out
		puts "\nEnter a five-digit positive interger"
		entry = gets.chomp.gsub(',', '').to_i

		while entry >= 10000 && entry <= 99999
			puts "\nYou entered #{entry}, which is #{entry.to_s.reverse} backwards.\n\n"
			break
		end
		if entry < 10000 || entry > 99999
			puts "\nYou did not enter a valid number."
			flip_out
		end
	end
end
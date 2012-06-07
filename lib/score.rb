# http://www.daniweb.com/software-development/cpp/threads/423124/series-of-easy-coding-exercises-with-code-snippet-solutions#post1806782

class Score
	def add_player # Adding a new player
		# Init empty array
		info = []

		# Get players
		# An improvement could be to have the operator enter
		# information already fomatted. Exp: Mike, 23, 1
		puts "Please enter the information about a player\nName:"
		info << gets.chomp.downcase.capitalize
		puts "\nPoints:"
		info << gets.chomp.to_i
		puts"\nFouls:"
		info << gets.chomp.to_i

		# Push each guy into array
		@team << info

		# Confirm the player
		puts "\nYou added #{info.first}!"
		more
	end
	def more # Made this to have a minimum of 3 players
		if @team.length < 3	
			puts "You need at least #{3- @team.length} more."
			add_player
		elsif @team.length >= 3
			puts "Do you want to add more players?\ny/n"
			reply = gets.chomp
				if reply == 'n'
					puts "Would you like to show players that had less than 2 fouls and scored more than 6 points?\ny/n"
					reply = gets.chomp
					if reply == 'n'
						more
					elsif reply == 'y'
						compare
					else
						puts "I did not understand that.\n\n"
						more
					end
				elsif reply == 'y'
					add_player
				else
					puts "I did not understand that.\n\n"
					more
				end
		end
	end
	def compare # Output the data. 
		# An improvement would be to have the operator 
		# choose the range of points/fouls to show.
		@team.each{ |x|
			if x[1] > 6 && x[2] < 2
				puts "#{x[0]} scored #{x[1]} points with only #{x[2]} foul. What a great player!"
			else
				puts "#{x[0]}; not so hot, buddy. Keep tryin\'!"
			end
		}
		puts
		# I put this in to just make sure there was a display of everything
		# the operator just typed in. 
		@team.each {|x| 
			if x[2] == 1
				fouls = 'foul'
			else
				fouls = 'fouls'
			end
			puts "#{x[0]}: #{x[1]} points; #{x[2]} #{fouls}."
		}
		puts
	end
	def start
		@team = []

		add_player

	end
end
		
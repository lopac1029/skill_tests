puts
puts 'Please enter a number of 20 or greater.'
number = gets.chomp.to_i

until number > 19
	puts
	puts 'You entered ' + number.to_s + ', which is not equal to or greater than 20.'
	puts 'Please choose again correctly.' 
	number = gets.chomp.to_i
end

if number >= 20
	puts
	puts 'Please chose an option of 1, 2, or 3.'
end

option = gets.chomp.to_i

until option.between?(1, 3)
	puts
	puts 'You did not choose a correct option'
	puts 'Please choose again correctly.'
	option = gets.chomp.to_i
end

if option == 1
	int=((number*number)-(option*option)+number+option)/2;
	puts
	puts 'The sum of all numbers between 1 and ' + number.to_s + ' is ' + int.to_s + '.'
	puts
elsif option == 2
	puts
	puts 'The odd numbers from 1 to ' + number.to_s + ' are: '
	x = 1
	array = []
	while x <= number
		array << x
		x=x+2
	end
	puts array.join(', ')
	puts
elsif option == 3
	puts
	puts 'Thanks for entering number ' + number.to_s + '! Option ' + option.to_s + ' does nothing.'
	puts
end
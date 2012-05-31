puts 'Please enter a number of 20 or greater.'
n = gets.chomp.to_i
until n > 19
	puts 'You entered ' + n.to_s + ', which is not equal to or greater than 20. Please choose again correctly.' 
	n = gets.chomp.to_i
end
if n >= 20
	puts 'Please chose an option of 1, 2, or 3.'
end
op = gets.chomp.to_i
until op.between?(1, 3)
	puts 'You did not choose a correct option. Please choose again correctly.'
	op = gets.chomp.to_i
end
if op == 1
	i=((n*n)-(op*op)+n+op)/2;
	puts 'The sum of all numbers between 1 and ' + n.to_s + ' is ' + i.to_s + '.'
elsif op == 2
	puts 'The odd numbers from 1 to ' + n.to_s + ' are '
	x = 1
	while x <= n
		puts x
		x=x+2
	end
elsif op == 3
	puts 'Thanks for entering number ' + n.to_s + '! Option ' + op.to_s + ' does nothing.'
end
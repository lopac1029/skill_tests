numbers = []

60.times do 
	numbers.push rand(-10..10) 	
end 

neg = numbers.select{|x| x < 0}
pos = numbers.select{|x| x > 0}
zero = numbers.select{|x| x == 0}

puts
puts 'The ' + numbers.length.to_s + ' numbers that are randomly choosen are'
puts numbers[0..19].join(', ')
puts numbers[20..39].join(', ')
puts numbers[40..59].join(', ')
puts
puts 'There are '+pos.length.to_s+' positive numbers (not including 0), and they are'
puts pos.join(', ')
puts
puts 'There are '+neg.length.to_s+' negative numbers, and they are'
puts neg.join(', ')
puts
puts ((100 * pos.length) / numbers.length).to_s + '% of the numbers are positive,'
puts 'while ' + ((100 * neg.length) / numbers.length).to_s + '% of the numbers are negative.'
puts ((100 * zero.length) / numbers.length).to_s + '% of the numbers are zero'
puts
class Sentence
	def string
		puts "\nPlease enter a single, complete sentence"
		entry = gets.chomp

		string = entry.gsub(%r[[^a-zA-Z]], ' ')
		letter_count = entry.gsub(%r[[^a-zA-Z]], '').length

		array = []
		final = []
		array = string.split
		array.each { |word| final.push "'#{word.to_s}' has #{word.length} letters." }

		puts "\nThere are #{letter_count} letters in this sentence.\n\n" 
		puts final
		puts
	end
end
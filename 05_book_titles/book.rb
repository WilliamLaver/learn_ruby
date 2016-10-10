class Book
	attr_reader :title
	def title=(input)
		@title = ""
		i = 0
		little_words = ["the", "and", "in", "of", "a", "an","above","at","by","with","onto","for"]
		input_split = input.downcase.split(" ")
		input_split.each do |element|
			if !little_words.include?(element) || i == 0
				@title += element[0].upcase + element[1, input.length - 1] + " "
			else
				@title += element + " "
			end

			i = 1
		end
		@title = @title.chop
	end
end

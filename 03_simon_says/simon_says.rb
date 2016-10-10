def echo(input) 
	response = input
end

def shout(input)
	response = input.upcase
end	

def repeat(input, n = 2)
	response = "#{input} "*n
	response = response.chomp(" ")
end

def start_of_word(input, n = 1)
	output = input[0,n]
end

def first_word(input)
	input_split = input.split(" ")
	output = input_split[0]
end

def titleize(input)
	output = ""
	little_words = ["the", "and", "over"]
	i = 0
	input_split = input.split(" ")
	input_split.each do |element|
		if !little_words.include?(element) || i == 0
			output += element[0,1].upcase + element[1, element.length - 1] + " "
		else
			output += element + " "
		end

		i = 1
	end
	output = output.chomp(" ")
end

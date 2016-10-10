#!/usr/bin/ruby

def translate(input)
	input = input.downcase
	input_split = input.split(" ")
	vowels = ["a","e","i","o","u","y"]
	output = ""
	input_split.each do |element|
		if vowels.include?(element[0])
			output += element + "ay "
		else
			i = 0
			element_split = element.split("")
			while !vowels.include?(element_split[i]) || (element_split[i] == "u" && element_split[i-1] == "q") do
				
				element += element[0]
				element = element[1, element.length - 1]
				i += 1
			end

			output += element + "ay "
		end
	end
	
	return	output = output.chop
end

pig = translate("Hello my")
puts pig



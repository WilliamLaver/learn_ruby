def add(a,b)
	result = a + b
end

def subtract(a,b)
	result = a - b
end

def sum(array)

	sum = 0

	if array.length > 0 then
		array.each do |item|
			sum += item
		end
	end

	sum
end

def multiply(array)
	product = 1

	if array.length > 0 then
		array.each do |element|
			product *= element
		end
	end

	product
end

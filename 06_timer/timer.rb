class Timer
	attr_reader :seconds, :time_string

	def initialize()
		@seconds = 0
	end
	
	def seconds=(input)
		@seconds = input
		hours = (@seconds/(60.0*60.0)).floor
		minutes = ((@seconds - hours*60*60)/60).floor
		seconds = (@seconds - hours*60*60 - minutes*60).floor
		times = {"hours":hours, "minutes":minutes, "seconds":seconds}

		@time_string = ""

		times.each_pair do |key, value|
			cap = 60
			if key == "hours"
				cap = 24
			end

			if value < 10
				@time_string += "0"
			elsif value > cap
				value = value%cap
			end
			
			@time_string += "#{value}:"
		end

		@time_string = @time_string.chop
		
	end
end

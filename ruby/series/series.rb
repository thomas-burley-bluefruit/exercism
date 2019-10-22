class Series
	def initialize(input)
		@input = input.to_s
		
	end

	def slices(n)
		if n > @input.length
			raise ArgumentError, 'n cannot be longer than ' + @input.length.to_s
		end
		n-=1
		slices = Array.new
		for i in 0..@input.length-1 do
			break if i+n > @input.length-1
			currentSlice = ""
			@input[i..i+n].each_char {|n| currentSlice << n}
			slices.push(currentSlice)
		end
		return slices
	end
end

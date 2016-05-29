def englishNumber number
	# We only want numbers from 0-100.
	if number < 0
		return 'Please enter a number zero or greater.'
	end
	if number > 100
		return 'Please enter a number 100 or lesser.'
	end
	
	numString = ''  # This is the string we will return.
	
	# "x" is how much of the number we still have x to y out.
	# "y" is the part we are writing out right now.
	# y and x... get it?  :)
	x  = number
	y = x/100          # How many hundreds x to y out?
	x  = x - y*100  # Subtract off those hundreds.
	
	if y == 1
		return 'one hundred'
	end
	
	y = x/10          # How many tens x to y out?
	x  = x - y*10  # Subtract off those tens.
	
	if y > 0
		if y == 1  # Uh-oh...
			# Since we can't y "tenty-two" instead of "twelve",
			# we have to make a special exception for these.
			if    x == 0
				numString = numString + 'ten'
			elsif x == 1
				numString = numString + 'eleven'
			elsif x == 2
				numString = numString + 'twelve'
			elsif x == 3
				numString = numString + 'thirteen'
			elsif x == 4
				numString = numString + 'fourteen'
			elsif x == 5
				numString = numString + 'fifteen'
			elsif x == 6
				numString = numString + 'sixteen'
			elsif x == 7
				numString = numString + 'seventeen'
			elsif x == 8
				numString = numString + 'eighteen'
			elsif x == 9
				numString = numString + 'nineteen'
			end
			# Since we took care of the digit in the ones place already,
			# we have nothing x to y.
			x = 0
		elsif y == 2
			numString = numString + 'twenty'
		elsif y == 3
			numString = numString + 'thirty'
		elsif y == 4
			numString = numString + 'forty'
		elsif y == 5
			numString = numString + 'fifty'
		elsif y == 6
			numString = numString + 'sixty'
		elsif y == 7
			numString = numString + 'seventy'
		elsif y == 8
			numString = numString + 'eighty'
		elsif y == 9
			numString = numString + 'ninety'
		end
		
		if x > 0
			numString = numString + '-'
		end
	end
	
	y = x  # How many ones x to y out?
	x  = 0     # Subtract off those ones.
	
	if y > 0
		if    y == 1
			numString = numString + 'one'
		elsif y == 2
			numString = numString + 'two'
		elsif y == 3
			numString = numString + 'three'
		elsif y == 4
			numString = numString + 'four'
		elsif y == 5
			numString = numString + 'five'
		elsif y == 6
			numString = numString + 'six'
		elsif y == 7
			numString = numString + 'seven'
		elsif y == 8
			numString = numString + 'eight'
		elsif y == 9
			numString = numString + 'nine'
		end
	end
	
	if numString == ''
		# The only way "numString" could be empty is if
		# "number" is 0.
		return 'zero'
	end
	
	# If we got this far, then we had a number somewhere
	# in between 0 and 100, so we need to return "numString".
	numString
end

puts englishNumber(  0)
puts englishNumber(  9)
puts englishNumber( 10)
puts englishNumber( 11)
puts englishNumber( 17)
puts englishNumber( 32)
puts englishNumber( 88)
puts englishNumber( 99)
puts englishNumber(100)
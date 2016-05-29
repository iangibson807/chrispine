# this routine turns integers into words.
  def englishNumber number
 

  numString = ''  

  onesPlace = ['one',     'two',       'three',    'four',     'five',
               'six',     'seven',     'eight',    'nine']  
  tensPlace = ['ten',     'twenty',    'thirty',   'forty',    'fifty',
               'sixty',   'seventy',   'eighty',   'ninety']  
  teenagers = ['eleven',  'twelve',    'thirteen', 'fourteen', 'fifteen',
               'sixteen', 'seventeen', 'eighteen', 'nineteen']  

  # "left" is how much of the number we still have left to write out.  
  # "write" is the part we are writing out right now.  
  
 
# 	for hundreds:  	
	left  = number
  write = left/100          # How many hundreds left to write out?  
  left  = left - write*100  # Subtract off those hundreds.  
	if write > 0 and write <10
    hundreds  = englishNumber write
    numString = numString + hundreds + ' hundred'
		if left > 0 
			numString = numString + ' '
		end
	end
# for tens:  
  write = left/10
  left  = left - write*10  .
	if write > 0
    if ((write == 1) and (left > 0))
    numString = numString + teenagers[left-1]
    left = 0
    else
      numString = numString + tensPlace[write-1]
    end
	end
		if left > 0
			numString = numString + '-'
		end

	write = left  
	left  = 0     
	if write > 0
		numString = numString + onesPlace[write-1]
	end
	
	numString
end


	puts englishNumber(999)  
	puts englishNumber(999000)  
	puts englishNumber(999999)

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
  
	# 	for thousands:    
	left  = number
	write = left/1000
	write2 =left/1000.to_f
	left  = left - write*1000
	if write2 ==2.0
		thousands  = englishNumber write
		numString = numString + thousands + ' thousand ' 
	end
	if write >=2 and write2 !=2.0
		thousands  = englishNumber write
		numString = numString + thousands + ' thousand ' + ' and '
	end
# 	for hundereds
	
  write = left/100   
  left  = left - write*100   
	if write > 0 and write <20  
		hundreds  = englishNumber write  
		numString = numString + hundreds + ' hundred' + ' and '  
		if left > 0  
			numString = numString + ' '  
		end
	end
	write = left/10  
  left  = left - write*10  
	if write > 0  
    if ((write == 1) and (left > 0))  
    numString = numString + teenagers[left-1]  
     left = 0  
    else  
      numString = numString + tensPlace[write-1]  
     end  
		if left > 0  
      numString = numString + '-'    
    end  
		end  
		write = left  
  left  = 0  
	if write > 0  
    numString = numString + onesPlace[write-1]    
    end  
	numString  
end

puts englishNumber(2000)  
puts englishNumber(2016)
puts englishNumber(2176)
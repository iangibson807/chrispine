def englishNumber number
	numString = ''  
	left = number
	left = number -1
	



	
	
	onesPlace = ['one',     'two',       'three',    'four',     'five',
	             'six',     'seven',     'eight',    'nine']  
	            tensPlace = ['ten',     'twenty',    'thirty',   'forty',    'fifty',
	                         'sixty',   'seventy',   'eighty',   'ninety']  
	            teenagers = ['eleven',  'twelve',    'thirteen', 'fourteen', 'fifteen',
	                         'sixteen', 'seventeen', 'eighteen', 'nineteen']  
	            
	            # "left" is how much of the number we still have left to write out.
	            # "write" is the part we are writing out right now.
	            
	            #   for millions:  
	           
	            # 	for thousands:    
	            while number >2
	            left  = number
							left = number-1
	            write = left/1000
	            left  = left - write*1000
	            if write >0 and write <=999
	            thousands  = englishNumber write
	            numString = numString + thousands + ' thousand '
	            if left > 0 
	            numString = numString + ' '
	            end
	            end
	            # 	for hundreds
	            
	            write = left/100   
	            left  = left - write*100   
	            if write > 0 and write <10  
	            hundreds  = englishNumber write  
	            numString = numString + hundreds + ' hundred'  
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
	             numString + ' bottles of beer on the wall ' + numString + ' bottles of beer'
							 'Take one down and pass it around , ' + numString + ' bottles of beer on the wall'
							end
             end	
							puts englishNumber(999)  
	           
							
							
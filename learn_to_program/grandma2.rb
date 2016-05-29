n = 0
while n<3
	comment = gets.chomp
	if comment !=comment.upcase
	 puts 'SPEAK UP SONNY'
	 end
	 if comment == comment.upcase
		 then 
		 puts 'NOT SINCE 1938'
	 end
	 if comment == 'bye'.upcase
		 n = (n+1)
		 end
		 if comment !='bye'.upcase
			 n = 0
		 end
		 end
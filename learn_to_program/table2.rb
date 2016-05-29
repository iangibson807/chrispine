
array = [['Chapter 1', 'Numbers', 1],['Chapter 2', 'Letters', 72],['Chapter 3', 'Variables', 118]]

lineWidth = 60
col1Width = lineWidth/4
col2Width = lineWidth/2
col3Width = lineWidth/4

array.each do |i|
	puts 	i[0].to_s.ljust(col1Width) +
	 		i[1].to_s.center(col2Width) + 
	 		i[2].to_s.rjust(col1Width)
end
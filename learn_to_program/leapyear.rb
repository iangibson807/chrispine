
start_date = gets.to_i
end_date = gets.to_i
while start_date <= end_date 
if ((start_date % 4 == 0) or (start_date % 400 == 0))then
        puts start_date
end
				start_date = start_date + 1       
end

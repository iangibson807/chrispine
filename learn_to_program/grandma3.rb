
n = 0

while n < 3
  response = gets.chomp
if response == ('bye'.upcase)
  puts "stay a while son..."
  n = (n+1)
end
	if response != 'bye'.upcase
		n = 0
	end
if response != response.upcase
  puts "Huh?! I CAN'T HEAR YOU!"
end
if (response == response.upcase and response != 'bye'.upcase)
  puts "NO! NOT SINCE " + (1930+rand(21)).to_s + "!"
end
end

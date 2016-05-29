i = gets.chomp.to_i
hundreds = i / 100
tens = i % 100 / 10
units = i % 100 % 10
sum = hundreds + tens + units
puts sum
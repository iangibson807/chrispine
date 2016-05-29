puts 'what is your first name?'
name1 = gets.chomp
puts 'what is your middle name?'
name2 = gets.chomp
puts 'what is your last name?'
name3 = gets.chomp
name4 = name1.length + name2.length + name3.length
name5 =' ' + name1 + ' '+ name2 +' ' + name3 +''
puts 'did you know that there are ' + name4.to_s + ' letters in the name ' + name5 + ''''
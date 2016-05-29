puts "Please enter some names:"

name = gets.chomp

names = []

while name != ''

    names.push name

    name = gets.chomp

end

puts names.sort.join(', ')

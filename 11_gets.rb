puts "Hi, what's your name?"
# Gets asks for input
# chomp cuts off the break line command
name = gets.chomp

puts "Great! What's your age?"
# .to_i changes string to int
age = gets.chomp.to_i

puts "Cool, so your name is #{name} and you are #{age} years old"
name = gets.chomp

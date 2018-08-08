puts "Hi there, I'm a string"
puts "I can also include characters and numbers: # $ % ! 02321497"
name = "Boris"
revenue = "$23 dollars"

puts name, revenue

space= " "
p space.length

empty = ""
p empty.length

p name.class
p space.class
p empty.class

# creating new object as a string- alternative sytax
name= String.new("Boris")
p name
p 5.to_s.class

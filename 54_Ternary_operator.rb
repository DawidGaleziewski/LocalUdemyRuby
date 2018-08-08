if 1 <2
  puts "yes it is"
else
  puts "No, its not!"
end

#do this operation, if this condition, else dot his
puts 1 < 2 ? "Yes it is" : "No its not"

if "YES".downcase == "yes"
  puts "the two are equal"
else
  puts "two are not equal"
end

puts "YES".downcase == "yes"? "Yes thios is equal" : "no its not"
def even_or_odd(number)
  number.even? ? "That is even" : "that number is odd"
end

puts even_or_odd(2)
puts even_or_odd(13)

pokemon ="Pikachu"
puts pokemon == "Charizard"? "This is charizard" : "This is not charizard"
def check_pokemon(pokemon)
  #we do not put puts here as it will return nil
  pokemon == "Charizard"? "This is charizard" : "This is not Charizard"
end

p check_pokemon("Pikachu")

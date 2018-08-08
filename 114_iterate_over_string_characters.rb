"Hello world".each_char {|char| puts char}

#other method of doing this
name= "Dawid"
name.split("") #his splits all the characters, giving you a array

#same way of doing this

p name.chars

letters = name.chars
letters.each {|letter| puts "#{letter} is awesome"}

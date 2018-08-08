puts "whimper mmm".sub("m", "s")
#two arguments:
  #- what are you looking for?
  #- what do you want it to be replaced with
#it will only replace the first argument
puts "wordplay".sub("w", "sw")
puts "wordplay".sub("word", "sword") #we are not limited to one character
#you are also not limited to the same number of character
word = "asprin"
puts word.sub("in", "ing")
puts word.sub!("in", "ing") #works with bang method

#gsub - global substitution
puts "an apple".gsub("a", "-")#replaces all occurences of that character/s
puts "555 555 1234".gsub(" ","")#remove all whitespaces

#simpllify this by regular expression object
puts "(555)-555 1234".gsub(" ","").gsub("(","").gsub(")","").gsub("-", "")
puts "(555)-555 1234".gsub(/[^d]/,"") #any non digit
puts "(555)-555 1234".gsub(/[-\s\(\)]/,"") #or specyfi characters

number= "(555)-555 1234"
number.gsub!(/[-\s\(\)]/,"")
puts number

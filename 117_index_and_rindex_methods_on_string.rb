#return of first occurence or last occurance of the substring

fact= "I am very handsome"
p fact.index("v") #index of first characters position
p fact.index("z") #if not found returns nil
p fact.index("e") # if two letters possible,  then takes only first one
p fact.index("e", 7) #second argument is the index were checking will start

 #rindex does the same from the end
p fact.rindex("e")

#challange emulate index
puts "###"

def custom_index (string, substring)
  if string.include?(substring)
    string.split("").each_with_index do |char, index|
      if char == substring
       return index
        break
      end
    end
  else
    return nil
  end
end



p custom_index(fact , "am")

#resoultion

def custom_index_resolution (string, substring)
  unless string.include?(substring)
    return nil
  end
  length = substring.length # I didnt known that
  string.chars.each_with_index do |char, index| #chars changes this to array of characters
    sequence = string[index, length] #first starts at current index seccond value specyfies number
    #of characters so it will go by 2 chars in array
    return index if sequence == substring #more complex logic to practice this part
  end
end

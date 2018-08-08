#called on array and returns a string
names = ["Joe", "Moe", "Bob"]
p names.join #whitout argument just joins all elements
p names.join("!--!") #delimeter used in joining elements off array


#challange custom join
chars= ["h", "e", "l", "l", "g"]

def custom_join(array, delimeter ="") # forgot this can be done so it has a default value
  result=""
  array.each_with_index do |char, index|
    result += char
     #if delimeter != nil
    unless index >= (array.length) -1 #so it wont add it on the end
    result += delimeter # more elegant can be done by string << char
     #end
    end
  end
  p result
end

custom_join(chars, "!!!!!")

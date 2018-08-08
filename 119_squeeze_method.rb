sentence = "Thhhhhhe aaaaardvark jummped  ovvvvver the fence!"
p sentence
puts sentence.squeeze #remove all duplicate characters in a row
puts sentence.squeeze("av") #argument will set only character to focus on
sentence.squeeze!("h") #there is a bang method for squeeze

#challange - remove duplicate characters
#failed
def custom_squeeze(string)
  final=""
  characters_array= string.split("")
  characters_array.each_with_index do |char, index|
    unless index >= 0 && characters_array[index - 1] == char
     final += char
    end
  end
  p final
end

p custom_squeeze(sentence)

def custom_squeeze_solution(string)
  final= ""
  chars = string.split("")
  chars.each_with_index do |char, index|
    if char ==chars[index + 1]
      next #used to skip
    else
      final << char
    end
  end
  final
end

#refine the code

def custom_squeeze_solution_refine(string)
 final=""
 chars = string.split("")
 chars.each_with_index { |char, index| char == char[index + 1] ? next : final  << char}
 final
end

custom_squeeze_solution_refine(sentence)

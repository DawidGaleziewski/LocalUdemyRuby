#regex is using symbols to extract certain substrings of text
phrase = "The ruby Programmin Language is amazing"
puts phrase.start_with?("The ruby") #does the string starts with..
puts phrase.start_with?("Ruby")#it does NOT check if the string contains this tring
puts phrase.start_with?("the") #it is case sensitive
puts phrase.downcase.start_with?("the") #we can work around this with method chaining
puts

#end_with?
puts phrase.end_with?("zing")
puts phrase.end_with?("amezin")
puts

#emulate those methods
def custom_start_with(string, substring)
  substring.chars.each_with_index do |char, index|
    if char != string[index]
      return false
      break
    end
  end
  return true
end

puts
p custom_start_with(phrase, "Bingo!")
puts
p custom_start_with(phrase, "The")

puts

def custom_end_with(string, substring)
  substring.reverse.chars.each_with_index do |char, index|
    if char != string[ (-1 - index)]
      return false
      break
    end
  end
  return true
end

p custom_end_with(phrase, "zing")

#solution - diffrent approach
def custom_start_with_refined(string, substring)
  if string[0, substring.length] == substring
    true
  else
    false
  end
end

#refine even more to one line
def custom_start_with_refined_v2(string, substring)
  string[0, substring.length] == substring ? true : false
end

#pro refine
def custom_start_with_refined_v2(string, substring)
  string[0, substring.length] == substring #condition will return true or false
  # so we dont even need to write true : false
end
puts

puts custom_start_with_refined_v2(phrase, "The")

#Custome end with method- my reversed method
def custom_end_with_refine(string, substring)

  string[-substring.length..-1] == substring
  #p string[-substring.length..-1] #had to do this with ..
end

p custom_end_with_refine(phrase, "zing")

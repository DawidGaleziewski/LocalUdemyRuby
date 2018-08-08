phrase = "The ruby programming is amazing"
puts phrase.include?("ruby")

#challange- emulate this
search_for= "ruby"
puts
def custom_include(string, substring)
  string.chars.each_with_index do |char, index|
    if string[index, substring.length] == substring
      return true
      break
    end
  end
  return false
end

p custom_include(phrase,"ruby")

#refine - only short syntax change- rest is fine
def custom_include_refine(string, substring)
  string.chars.each_with_index do |char, index|
    return true if string[index, substring.length] == substring
    end
  end
  return false
end

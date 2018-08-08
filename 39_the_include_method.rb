name = "Snow White"
p name.include?("s") # case sensitive
p name.include?(" ")
p name.downcase.include?("s")
p name.upcase.include?("SNOW")
# as we do not use ! bang methods
p name.downcase.include?("rain")
p name.downcase.include?("it")

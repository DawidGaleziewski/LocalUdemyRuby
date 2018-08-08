require 'time' # we need to add this command of top of the file if we want to use this method
#it loads additional time class, when loading ruby.
#whitout it the parse wont be recognized as method

#works with default formats
puts Time.parse("2016-01-01") # converts string to time

#more custome formats
#parse would use default here and fail
#we use same documentation for strftime, in second argument to model time input
puts Time.strptime("03-04-2000", "%m-%d-%Y")

#bang method mutates original object, it uses !
word = "hello"
p word.capitalize
p word
#operation was not saved
# we can use old method
word = word.capitalize
p word

#bang method does it in less code
word.capitalize! # this is compleatly diffrent method! It mutates original object
p word

example ="howdy there"
example.capitalize!
p example
puts

word.upcase!
p word
word.downcase!
p word
word.reverse!
p word
word.swapcase!
p word

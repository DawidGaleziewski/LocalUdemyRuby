#regular expression is another ruby object
#its class is regexp
#used to match patterns in the strings
#created with // syntax
#string =~ /<regular expression>/
puts //.class
phrase = "The Ruby Programming Language is amazing!"
puts phrase =~ /T/ #give index position of first occurance
puts phrase =~ /R/ #gives only the first occurance
puts /m/ =~ phrase # you can flip the syntax
puts
puts phrase =~ /!/ # you can use special characters
puts phrase =~ /./ #however some of them may have some purpose
puts
#. is a wildcard for any characters
puts phrase =~/ / #white space works as well
puts

p phrase =~/x/ #if it does not exist we get a nil
puts
p phrase =~ /Ru/ #we can chain characters as well
p phrase =~ /anguage/

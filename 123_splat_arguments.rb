#unknown number of expected arguments

def sum(*numbers) #used by *- infinite numbers of arguments.
#those will be stored in array
  sum = 0
  p numbers.class #it is array
  numbers.each {|num| sum += num}
  p sum
end

sum(1,1,213,3423,123,-12931, 23143, 123.13)

#you can combine splat and basic arguments which is advanced topic

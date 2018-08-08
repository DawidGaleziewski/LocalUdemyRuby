p 1.class
p 3.14.class
p true.class
p nil.class
p [1, 2, 4].class

puts
puts

puts 1.is_a?(Array) #check if this is a specyfic class
puts [1, 2, 3, 4].is_a?(Array)

#useful for controling data used
arr= ["a", "b"]
if arr.is_a?(Array)
  arr.each{ |e| puts e}
end

puts
puts

#inherit objects
#-- BasicObject
#-objects

#-- Integer
#-Fixnum   Bignum

#Object can be part of class that is above its class:
p 1.is_a?(Fixnum)
p 1.is_a?(Integer)
p 1.is_a?(Object)
puts
p [1, 2].is_a?(Array)
p [1, 2].is_a?(Object)
p [1, 2].is_a?(BasicObject)

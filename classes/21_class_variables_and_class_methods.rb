
#class variable and method are global to the class. Instance variables store individual data for objects spawned from class
# class variables beggin wit @@ sign
class Bicycle

 @@maker = "BikerTech0"
 @@count = 0  #very often this is used. Storing how many times this was used

 #methods are prefixed with self.
 def self.description #alternative is Bicycle.description - this is not as good as self.
   "hi there, I am the blueprint for bicycle objects"
 end

#just like instance variabless, class variable is protected by default
 def self.count
   @@count
 end

 def maker
   @@maker
 end

 def initialize # we define that this number is incremented by one every time a object is spawned
   @@count += 1 #keep track of number of created objects
 end
end

puts Bicycle.description
puts Bicycle.count

a = Bicycle.new
b = Bicycle.new
c = Bicycle.new

p Bicycle.count

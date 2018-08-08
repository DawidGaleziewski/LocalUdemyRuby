#it is ideal to have one class defined per file
#we crate a class by "class" keyword.
#starting class name with big name is a best practice!
#best to fallow upper camel convention example SmartPhone

class Gadget
#this is a empty class
end #conclude class with end

#creating objects from class
phone = Gadget.new
laptop = Gadget.new
microwave = Gadget.new
p phone.class
puts

puts phone #it shows place in memory
puts laptop
puts microwave #recogize all 3 are not the same, the point to individual respective places in memory
puts

puts Gadget.superclass #all classes inherit from object
puts Gadget.superclass.superclass #and BasicObject
puts
#gadget does not have anyhing defined still it some inherit methods from object
puts phone.methods.sort
puts
puts phone.is_a?(Gadget)
puts phone.is_a?(Object)
puts phone.is_a?(BasicObject)
puts
puts phone.respond_to?(:class) #can it respond to class methos?
puts phone.respond_to?(:methods)
puts phone.respond_to?(:length)

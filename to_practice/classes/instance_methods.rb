#instnace methods belong to each object
#like length, pop etc.
#msg we can send to a object
#they are not shared, everytime object is created methods are copied to that object
class Gadget
  def initialize #private method
    @username ="User #{rand(1..100)}"
    @password = "Password123"
    @production_number = "#{("a".."z").to_a.sample}-#{rand(1..999)}"
  end
  def info #same as normal method, just put it in class body
    #we need to use those with @, otherwise Ruby will search for local variable
    "Gadget #{@production_number} has the username #{@username}"
  end
end

phone = Gadget.new
laptop = Gadget.new

#it is public method, we can call it directly on the object
#object is as reciver
puts phone.info
puts laptop.info
puts phone.methods.sort #all methods
puts
puts phone.methods - Object.methods #we can subtract Object method in order to get only methods used on Gadget class

#puts Gadget.info #wont work, method belongs to object not the class
#puts info #wont work, ruby does not know what it is, belongs to object
#puts phone.@password this is private, it will throw a error

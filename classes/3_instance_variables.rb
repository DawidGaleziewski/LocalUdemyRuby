#instance variables- variables belonging to specyfix object
#define object properties or characteristicts
#the instance variables make up the object's state
#each object can have a custom state
  #you specify the design, not the specyfics
  #state of a object can change
#instance variables begin with @ symbol (i.e @name)
#@ is a sigil, special character that denotes the variables scope
#whitout @ sigil the variable would be interpreted as a local variable to the method it is used on

#initialize Method - what to do when object is created from that class
#initialize method offers us a chance to assign values to instance variables in order to define object stae
# If the initialize method is not defined in the class, each object is initialized with no state
#the assignment of values to instance variables does not mean the values have to stay the same.
#The object state can be changed later

class Gadget
  #initialize is a private method. It can not be called on object like object.initialize
  def initialize #this is as any method however name has to be initialize, it is not custom as other methods are
    #fixed values for those instance variables, filled with random data
    @username ="User #{rand(1..100)}" #random number
    @password = "Password123"
    @production_number = "#{("a".."z").to_a.sample}-#{rand(1..999)}"
  end
end

phone = Gadget.new
laptop = Gadget.new


p phone
p laptop
p phone.instance_variables # lists objects instance variables

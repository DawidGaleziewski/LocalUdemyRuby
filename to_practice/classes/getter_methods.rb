#Instanced methods cannot be accesed by default, this is part of OOP concept called incapsulation
#data should be protected from accessing
#object should not be modified, except the pathways you provide to it
#instanced methods should be carefully prepered so that not everybody can access those

class Gadget
  def initialize
    #those are instance variables
    @username ="User #{rand(1..100)}"
    @password = "Password123"
    @production_number = "#{("a".."z").to_a.sample}-#{rand(1..999)}"
  end

  def to_s
    "It is made from the #{self.class} class and it has ID #{self.object_id}"
  end

  def username #this is a getter method, it does not modify or write to variable, it just displays its content
    @username #instance methods have access to all instance variables
    #they can also call other instance variables
  end
  def production_number
    @production_number
  end
end

phone = Gadget.new
#p phone.@username wont allow us to get to this data
# we cannot access data inside instance variables. This can be sensitive data like account info.
#in order to get this data we will need to use methods
#those kind of methods that access instance variables are called getter methods

#some data is write only (example, passwords)
#read only data
#write and read

#username #you should be able to read and write
#password #only write
#production number- read only

#getter method is a read method
#best practice is to give instance method the same name as the instance variable
p phone.username #we first call on instance method, that gets the instance variable
p phone.production_number

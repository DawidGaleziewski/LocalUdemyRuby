#setter methods will alter the object state
#called also writer methods
#done with variable_name=  This is not required but a best practice
class Gadget
  def initialize
    @username ="User #{rand(1..100)}"
    @password = "Password123"
    @production_number = "#{("a".."z").to_a.sample}-#{rand(1..999)}"
  end

  def to_s
    "It is made from the #{self.class} class and it has ID #{self.object_id}"
  end

#username is readeble and writable
  def username
    @username
  end
  def username=(new_username) #those are only local to this method
    #we are safe to use those on other methods like new_value
    @username = new_username
  end

  def production_number
    @production_number
  end

#override original password
  def password=(password)  #1st password is the name of the method
                          #2nd is the name of the paramether
    @password = password #3rd name of instance variable
                        #4th name of paramether again
  end
end

phone = Gadget.new

#read and write
#syntax with object.method=(argument)
phone.username=("new_username123") #this calls setter method
puts phone.username #this calls getter method
p phone.username
puts

#write
#p phone.password #this still won't work, we do not have getter method here.
phone.password=("new_password543")

#alternative syntax for this
phone.password = "best_cred"

#read
puts phone.production_number

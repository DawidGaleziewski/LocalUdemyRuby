#self method, within object body, will refer to current object variable
class Gadget
  def initialize
    @username ="User #{rand(1..100)}"
    @password = "Password123"
    @production_number = "#{("a".."z").to_a.sample}-#{rand(1..999)}"
  end

  def to_s
    "It is made from the #{self.class} class and it has ID #{self.object_id}" #refering to current object, it acts like reciver, therefore we can run method on it
  end
end

phone = Gadget.new
laptop = Gadget.new


puts phone.to_s #in this case it will exchange "self" to phone
puts laptop.to_s #same on laptop.

#self allows us to reference objects label that does not exists yet.
#it will reference the current object when used inside instanced method.
#when not used inside instanced method it will reference class

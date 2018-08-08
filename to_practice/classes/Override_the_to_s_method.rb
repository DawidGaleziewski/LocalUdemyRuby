class Gadget
  def initialize
    @username ="User #{rand(1..100)}"
    @password = "Password123"
    @production_number = "#{("a".."z").to_a.sample}-#{rand(1..999)}"
  end

  def to_s #Ruby fallows look up tree.
    #when it looks for method, it first looks in class definition for it
    "username is #{@username}"
  end
end

phone = Gadget.new
laptop = Gadget.new

puts phone.methods.sort #to_s is available on all objects
puts
puts phone.respond_to?(:to_s)
puts phone.to_s
# we will override to_s method
#we just need to create custom to_s method
#important thing is that we can override method from another class

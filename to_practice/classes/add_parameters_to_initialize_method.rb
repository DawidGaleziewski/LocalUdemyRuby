#provide our own values to instance variables
class Gadget
  attr_accessor :username
  attr_reader :production_number
  attr_writer :password

  def initialize(username, password)# start as with every method paramethers
    #best practice is to keep parameters and variables the same in this case
    @username = username
    @password = password
    @production_number = "#{("a".."z").to_a.sample}-#{rand(1..999)}"
  end
end

g1 = Gadget.new("ruby_fan1", "supersecret1") #values are put in .new()
p g1.username
g1.username = "anotherAccName"
p g1.username
puts


g2 = Gadget.new("commoner", "simple_pass123")
p g2.production_number

g3 = Gadget.new("Mr_sandman", "pancake123")
g3.password = "new_password543"
#g4 = Gadget.new #it will fail whitout arguments

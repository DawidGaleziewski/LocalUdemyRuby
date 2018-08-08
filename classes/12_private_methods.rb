class Gadget
  attr_writer :password
  attr_reader :production_number
  attr_accessor :username

#example of private method is initialize
  def initialize(username, password)
    @username = username
    @password = password
    # @production_number = "#{("a".."z").to_a.sample}-#{rand(1..999)}"
    @production_number = generate_production_number #we can replace this with method defined below
  end

  def to_s
    "Gadget #{@production_number} has the username #{username}
    It is made from the #{self.class} class and it
    has the ID #{self.object_id}"
  end

#below is public by default
  private # all we need to do is add private keyword at top .
  #all methods below will be private now.
  #they will work inside the object, but we cannot call on them

  def generate_production_number #this is a issue as we can acess this externally
    start_digits = rand(10000..99999999)
    end_digits = rand(10000..99999999)
    alphabet = ("A".."Z").to_a
    midle_digits = "2017"
    5.times {midle_digits << alphabet.sample}
    "#{start_digits}-#{midle_digits}-#{end_digits}"
  end
end

phone = Gadget.new("user", "password")
p phone.production_number
#phone.initialize initialize cannot be called as its a private method
#private method cannot be called on a objec. It can be only called by another instances method on the object
p phone.generate_production_number


class Gadget
  attr_reader :production_number
  attr_accessor :username

  def initialize(username, password)
    @username = username
    @password = password
    @production_number = generate_production_number
    #new instance variable, we dont want this to be public
    @apps = []
  end

  def to_s
    "Gadget #{self.production_number} has the username #{username}
    It is made from the #{self.class} class and it
    has the ID #{self.object_id}"
  end

  def reset(username, password)
    #password method wont work here, ruby will assume its a variable
    ##method below will work but its not the best:
     #1 we duplicate a lot of code
     #2 we may forget below we added our own functionality for checking password
      # @username = username
      # @password = password
      # @apps = []

      #best method is using self.
      self.username = username
      self.password = password
      self.apps = []
  end

  def password=(new_password)
    if validate_password(new_password)
      @password = new_password
    end
  end

  private

  #add writer that is private
  attr_writer :apps

  def generate_production_number
    start_digits = rand(10000..99999999)
    end_digits = rand(10000..99999999)
    alphabet = ("A".."Z").to_a
    midle_digits = "2017"
    5.times {midle_digits << alphabet.sample}
    "#{start_digits}-#{midle_digits}-#{end_digits}"
  end

  def validate_password(new_password)
    new_password.is_a?(String) && new_password.length >= 6 && new_password =~ /\d/
  end
end

phone = Gadget.new("user", "password123")
phone.reset("test", "Test11")

class Gadget
  # attr_writer :password
  #afeter creating custome getter method with validation we do not need it here
  attr_reader :production_number
  attr_accessor :username

  def initialize(username, password)
    @username = username
    @password = password
    @production_number = generate_production_number
  end

  def to_s
    "Gadget #{@production_number} has the username #{username}
    It is made from the #{self.class} class and it
    has the ID #{self.object_id}"
  end

  #set a setter method
  def password=(new_password)
    if validate_password(new_password)
      @password = new_password
    end
  end

  private

  def generate_production_number #this is a issue as we can acess this externally
    start_digits = rand(10000..99999999)
    end_digits = rand(10000..99999999)
    alphabet = ("A".."Z").to_a
    midle_digits = "2017"
    5.times {midle_digits << alphabet.sample}
    "#{start_digits}-#{midle_digits}-#{end_digits}"
  end

  #we could put validation in same method as setter however this is better practice
  def validate_password(new_password)
    new_password.is_a?(String) && new_password.length >= 6 && new_password =~ /\d/
  end
end

phone = Gadget.new("user", "password123")

phone.password = 123 #this will be ignored

phone.password = "NewPass123"

phone.password = "test" #will be ignored

p phone.password = "Computer123"

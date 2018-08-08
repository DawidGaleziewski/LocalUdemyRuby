#General best practice is to use instance methods over instance variables
class Gadget
  attr_reader :production_number
  attr_accessor :username

  def initialize(username, password)
    @username = username
    @password = password
    @production_number = generate_production_number
  end

#referance to instance methods
 #Example use self.production_number not @production_number
 #whats more we can shorten this to production_number as ruby  will search for instance method inside
 #production_number will rffer attr_reader :production_number

  def to_s
    "Gadget #{self.production_number} has the username #{username}
    It is made from the #{self.class} class and it
    has the ID #{self.object_id}"
  end

  def password=(new_password)
    if validate_password(new_password)
      @password = new_password
    end
  end

  private

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

phone.password = 123

phone.password = "NewPass123"

phone.password = "test"

p phone.password = "Computer123"



#display benefit of instance method over instance variable:
class BankAccount
  def initialize # we store the ammount in cents
    @amount = 5000
    #we DO NOT want to do that:
      ##@ammount_in_pesos = @amount /100
     #as this will duplicate the data.
    #it is better to strore data once and change its presentation via methods

  end

  def status #we still can display the amount of money to customer
    #whitout sharing info to him on how the information is stored
    "Your bank account has total of #{amount}"
  end

  private

  #This is called sudo variable
  #This is a process of creating  new variables by methods, and  store them
  def amount #we want to present this ammount in dollars
    #but we won't want to shere this info to usser, on how info is stored
    #by this design we can change this, and we wont run into problems
    @amount / 100
  end

end

ba = BankAccount.new
p ba.status

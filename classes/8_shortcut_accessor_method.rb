#accessor method- to shorten the syntax
#this is sugar
#syntax: attr_<accessor/reader.writer> :symbol

class Gadget


  # def to_s
  #   "It is made from the #{self.class} class and it has ID #{self.object_id}"
  # end


  #create a getter and a setter, it will have the same function as two lines below
  attr_accessor :username #basic setter and getter

  # def username
  #   @username
  # end
  # def username=(new_username)
  #   @username = new_username
  # end

  attr_reader :production_number
  # def production_number
  #   @production_number
  # end

  attr_writer :password
  # def password=(password)
  #   @password = password
  # end

  #we can also seperate them by coma
  #ie: attr_writer :password, :usser, :id


  def initialize
    @username ="User #{rand(1..100)}"
    @password = "Password123"
    @production_number = "#{("a".."z").to_a.sample}-#{rand(1..999)}"
  end
end

phone = Gadget.new


#whole class
class Gadget_v2
  attr_accessor :username
  attr_writer :passwrod
  attr_reader :product_id

  def initialize
    @username ="User #{rand(1..100)}"
    @password = "Password123"
    @production_number = "#{("a".."z").to_a.sample}-#{rand(1..999)}"
  end
end

phone = Gadget_v2.new
p phone.username
phone.username = "James_Bond"
p phone.username

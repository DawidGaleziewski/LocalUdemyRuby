#3 ways to use super
 #withouth parentheses
 #with parentheses but no arguments
 #with parentheses and with arguments

class Car
  attr_reader :maker
  def initialize(maker)
    @maker = maker
  end

  def drive
    "Room! Room!"
  end
end

class Firetruck < Car
  attr_reader :sirens
  def initialize(maker, sirens)
    super(maker)
    @sirens = sirens #sirens is instance variable from the subclass
    #maker is instance variable taken from the superclass
  end

  # def drive(speed) #super returns value from drive method in superclass
  #   #if we want the argument to be passed from subclass to method where we used super,
  #     #we need to use super()
  #     #super + " Beep! Beep! I am driving at
  #     #super() + " Beep! Beep! I am driving at #{speed}"
  #     super() + " Beep! Beep! I am driving at"
  # end
end

ft = Firetruck.new("Ford", 45)
p ft

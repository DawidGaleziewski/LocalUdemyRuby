class Employee

  attr_accessor :age
  attr_reader :name

  def initialize(name, age)
    @name = name
    @age = age
  end

  def introduce
    "Hi, my name is #{name} and I am #{age} years old"
  end
end

boris = Employee.new("Boris", 25)

#unique classes for those subclasses
class Manager < Employee
  def yell
    "Who's the boss? I'am the boss!"
  end
end

class Worker < Employee
  def clock_in(time)
    "Starting my shift at time #{time}"
  end

#we can define diffrent functions for same methods on seperate subclasses
  def yell
    "I am working, I am working"
  end
end

bob = Manager.new("Bob" , 48)
dan = Worker.new("Daniel", 36)

p bob.yell
p dan.clock_in("4:00AM")
p dan.yell

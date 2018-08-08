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


class Manager < Employee
  def yell
    "Who's the boss? I'am the boss!"
  end

  def introduce #we can ovveride existing method to make it diffrent for one subclass
    "My name is #{name} and I am a manager"
  end
end

class Worker < Employee
  def clock_in(time)
    "Starting my shift at time #{time}"
  end

  def yell
    "I am working, I am working"
  end
end

bob = Manager.new("Bob" , 48)
dan = Worker.new("Daniel", 36)

sally = Manager.new("Sally", 45)

p sally.introduce # as Manager is class closer than its superclasss Employee
#this object will use method introduce, from the Manager class

bob = Worker.new("Bob", 32)
p bob.introduce
#

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
puts boris.introduce


#create subclass

class Manager < Employee #this shows Manager inherits from Employee

end

class Worker < Employee

end

dan = Worker.new("Dan", 34)
bob = Manager.new("Bob", 48) # it will expect two arguments- same requirements as superclass
p bob
p bob.class
p bob.introduce # same methods can be used from Employee

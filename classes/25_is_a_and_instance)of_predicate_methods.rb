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

end

class Worker < Employee

end

bob = Manager.new("Bob" , 48)
dan = Worker.new("Daniel", 36)

puts bob.is_a?(Manager) #checking if its a class
puts dan.is_a?(Worker)
puts bob.is_a?(Employee) # this is also true, it will check classes above superclass
puts bob.is_a?(Kernel)
puts

#instance of- only if object DIRECTLY inherits
puts bob.instance_of?(Manager)
puts bob.instance_of?(Employee) # wont check above one class hierarhy
puts dan.instance_of?(Worker)

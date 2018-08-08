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

p Manager.ancestors #looking up hierarchy.

puts Manager.superclass # we can only check superclass

puts Worker.superclass

#we can do this operation for many levels above our class
puts Manager < Employee #!!! Check if manager inherits from employee
puts Employee < Worker # it is not reverse. Inheritance is like cascade
puts Worker.ancestors
p Worker < Employee
p Worker < BasicObject

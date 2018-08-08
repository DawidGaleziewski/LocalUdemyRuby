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

class Manager < Employee

  attr_reader :rank

  def initialize(name, age, rank)# only rank is extra for this class, rest is in Employee superclass
    super(name, age) #name and age is taken from superclass
    @rank = rank #rank is only unique one here
  end

  def yell
    "Who's the boss? I'am the boss!"
  end

  def introduce #return same string as in superclass
    result =  super
    result += "I am also a manager!"
    result
  end
end

sally = Manager.new("Sally", 42, "Senior Vice President")
p sally.rank
p sally.age
p sally.name
p sally.introduce
puts

rick = Employee.new("Rick", 45)
p rick.name
p rick.introduce

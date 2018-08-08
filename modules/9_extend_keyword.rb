#normal mixins added by include, add methods to instances of ther class example Cat.new
#extend adds method to the class itself i.e Cat.method
module Announcer
  def who_am_i
    "The name of this class is #{self}"
  end
end

class Dog
  include Announcer
end

class Cat
  extend Announcer
end

watson = Dog.new
p watson.who_am_i #we have inculded those modules on instanced level

# rudy = Cat.new
# p rudy.who_am_i
  #trigers a error
  #This no longer is instanced method. Now it can be called on the class itself
p Cat.who_am_i # this is called on the class itself!

#example of real life use:
 #counter method- counts how many objects have been created from the class

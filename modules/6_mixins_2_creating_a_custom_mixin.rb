#we use those if we want to create a modules for multiple classes
#mixin is a module that injects additional behavior into a class
#mixins allow you to mimic inheritance from more than one class
#in ruby- every class can only inherit from one class above it
#subclass can inherit from class above, but it can inherit only from one
#a class that include a module has access to its methods and constants

##Modules (mixins) vs Inheritance
#class inheritance should be used for an is-a relationship
 #i.e. an array is a type of object. A fixnum is a type of integer
#modules should be used for has-a relationship. It adds a functionality
#For example a String has a Comperable feature set. String can have same module as string. But they are not related

##Mthod lookup path
#!Order that modules are included in a class matters
#If multiple modules mix in methods. The last module in the class definition will be used first
#Ruby will throw an error if the method is not found in the class, the modules or any superclass
 #it will continue searching untill its at the end of the lookup path

module Purchaseable #very often modules will end in word able
  def purchase(item) #we do not use self as we do not want to run the module on the module directly
    "#{item} has been purchased"
  end
end

#including module is like copying it and pasting
class Bookstore
  include Purchaseable #this will include the module into class
end

class Supermarket
  include Purchaseable # we can use same module to multiple classes
end

barnes_and_noble = Bookstore.new
#when you run the method ruby first looks if the class contains this method.
#if not it checks the modules class contains
p barnes_and_noble.purchase("Atlas Shrugged")

shoprite = Supermarket.new
p shoprite.purchase("Ice cream")

#this will inherit  as well

class CorneMart < Supermarket
end

# in this instant ruby first looks into class, than it looks into superclass and takes the module from there
quickstop = CorneMart.new
p quickstop.purchase("Slim Jim")

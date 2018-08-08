#object revice their structure from class
#.class method retuens the class, the object spawns from
#objects class, is itself another object

#.superclass method returns a class, that current class inherits from
#the class that inherits from the superclass is a subclass
#  Every class in Ruby except Basic object at the top, has a class above it
#example 5 is a fixnum class, spawning from integer, spawning from numeric
#this way those classes can have same/ similar methods on them
#ex we can add float, fixnum, bignum

#superclass and subclass: example fixnum/bignum are subclasses of Integer
#shows entire chain of chierarchy in array (it will also include modules)
p 5.class
p 5.class.superclass # showing Fixnums superclass
p 5.class.superclass.superclass #this shows Integers superclass - Numeric
p 5.class.superclass.superclass.superclass #object
p 5.class.superclass.superclass.superclass.superclass #basicObject
p 5.class.superclass.superclass.superclass.superclass.superclass #nil
puts


p 3.14.class
p 3.14.class.superclass
p 3.14.class.superclass.superclass
p 3.14.class.superclass.superclass.superclass
p 3.14.class.superclass.superclass.superclass.superclass
puts

p [1, 2, 3].class #array
p [1, 2, 3].class.superclass #object
p [1, 2, 3].class.superclass.superclass #basicObject
p [1, 2, 3].class.superclass.superclass.superclass #nil
puts

p Hash.new(0).class
p Hash.new(0).class.superclass
p Hash.new(0).class.superclass.superclass
p Hash.new(0).class.superclass.superclass.superclass
puts

#easier way of soing this is by ancestors
p //.class.ancestors #showing all superclasses and modules
p 5.class.ancestors
p 3.14.class.ancestors
p [1, 2, 3].class.ancestors
puts

#important point is that classes may share superclass!
#example  even hash and fixnum will share basicObject
p Hash.new(0).class.superclass
p 5.class.superclass.superclass.superclass
puts
p Hash.new(0).class.superclass == 5.class.superclass.superclass.superclass

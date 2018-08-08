class Product
  @@product_counter = 0

  def self.counter
    @@product_counter
  end

  def initialize
    @@product_counter += 1
  end
end


class Widget < Product
  @@widget_counter = 0

  def self.counter
    @@widget_counter
  end

  def initialize
    super #by super we are also incrementing product_counter in superclass
    @@widget_counter += 1
  end
end

class Thingamajing < Product
  @@thingamajing_counter = 0

  def self.counter
    @@thingamajing_counter
  end

  def initialize
    super
    @@thingamajing_counter += 1
  end

end


a = Widget.new
b = Widget.new

puts Widget.counter
puts Product.counter

c = Thingamajing.new
d = Thingamajing.new
e = Thingamajing.new

#thanks to this we can keep track of total number of all objects created (sub and super class), as well as indywidual ones
p Product.counter

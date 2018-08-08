#idealy you should have on class or one module per file!
#each module can have the same method name, as those are encapsulated

module Square
  def self.area(side)
    side * side
  end
end

module Rectangle
  def self.area(length, width)
    length * width
  end
end

module Circle
  PI = 3.14159
  def self.area(radius)
    PI * radius * radius
  end
end

puts Square.area(5)
puts Circle.area(5)
puts Rectangle.area(10,5)

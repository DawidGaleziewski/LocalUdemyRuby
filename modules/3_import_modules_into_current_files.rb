#one module or class should be keept peer file
# require "D:/Programy Instalki/ruby/modules/add1/square.rb"
require_relative "add1/square"
require "D:/Programy Instalki/ruby/modules/add1/rectangle.rb"
require "D:/Programy Instalki/ruby/modules/add1/circle.rb"
puts Square.area(123)
puts Rectangle.area(13, 9)
puts Circle.area(12)

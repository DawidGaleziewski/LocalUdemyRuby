#array- order/collection/list of objects. Array can store other arrays
#it is a objects that is container for other objects
# created by[]
p [] #empty array
p [].class

numbers = [1, 2, 3, 7, 9, 105] #each number is a seperate objects
p numbers
print numbers
puts numbers
puts

toys = ["Teddy bear", "Supper Soaker", "board game"]
puts toys

#array can consists object of difrent data types
puts
things = [4, true, "hello", 10.99]
p things
puts

registrations= [true, true, false, false]
p registrations
puts

#multi dimantional array
students = [["Boris", 25, true], #Two arrays stored in another array
            ["Sally", 23, true],
            ["Ingrid", 31, false]]

puts students

#all methods will inherit kernel methods, like methods method
# puts 5.methods.sort
# puts
# puts 3.14.methods.sort
fixnum_methods = 5.methods.sort
float_methods = 3.14.methods.sort

# puts fixnum_methods & float_methods #union method, returns elements common to both
# puts fixnum_methods - float_methods #check methods exclusive for fixnum objects
# puts float_methods - fixnum_methods
# puts

array_methods = [1, 2, 3].methods.sort
hash_methods = {key: 1}.methods.sort
puts array_methods & hash_methods
puts array_methods - hash_methods

#a type of object
#object that functions as a saved block
a = [1, 2, 3, 4, 5]
b = [6, 7, 8, 9, 10]
c = [11, 12, 13, 14, 15]

a_cubes = a.map {|num| num ** 3}
b_cubes = b.map {|num| num ** 3}
c_cubes = b.map {|num| num ** 3}

p a_cubes , b_cubes, c_cubes

# we can do this more efficiant
# to keep it DRY
# block is not a object
#we can use { } or do/end for proc
cubes = Proc.new {|number| number ** 3}
squares = Proc.new {|number| number ** 2}
# thanks to this we can save block to variable
#we can pass the proc to method as we would do with any variable
#however Proc always starts with &, that is &Proc_name
a_cubes = a.map(&cubes)
b_cubes = b.map(&squares)
c_cubes = c.map(&cubes)

puts

p a_cubes
p b_cubes
p c_cubes

#CONDENSE EVEN MORE
#unpacking arrays- we move nested arrays we prepared before
# we iterate over every single nested array with map method
#than we itarate over every single item in the array with another map method
#finally we use &cubes Proc to use block we specified earlier
a_cubes, b_cubes, c_cubes =[a, b, c].map {|array| array.map(&cubes)}


#another way to use proc IRL
#creating conversion rate
puts
currencies = [10, 20, 30, 40, 50, 200]
to_euros = Proc.new {|currency| currency * 0.95}
to_rupees = Proc.new {|currency| currency * 68.13}
to_pesos = Proc.new {|currency| currency * 20.67}
p currencies.map(&to_euros)
p currencies.map(&to_rupees)
p currencies.map(&to_pesos)
puts

#another example
#this is easy to maintain:
ages = [10, 60, 86, 39, 43, 25] #we can add one number whitout changing rest
is_old = Proc.new do |age|
 age > 60 # we can change age whitout changing rest of the code
end

#Proc helps maintain larger code
p ages.select(&is_old)#imagine those are 50 methods with this block
p ages.reject(&is_old)

#both are the same, map is shorter so its preferred
#lets assume I want to get squares from my array in another array
numbers=[1, 2, 3, 4, 5]
squares= []
numbers.each {|number| squares << number ** 2}
p squares

#map /collect returns new array
numbers=[1, 2, 3, 4, 5]
squares_2= numbers.map {|number| number ** 2} # gives back array with those results
p squares_2


# same
squares_2= numbers.collect {|number| number ** 2}

#can use do and end
fahr_temperatures= [105, 73, 40]
celsius_tempereatures= fahr_temperatures.map do |temp|
  minus32= temp -32
  minus32 * (5.0/9.0)
end

p celsius_tempereatures

#WATCH FOR THIS KIND OF ISSUES
results= [1,2,3].map {|number| puts number ** 2} # puts is the issue! it returns always nil}
p results # we get nills here!
#watch out for puts at the end of the array

#challange
#array of numbers
#write a cubes methos thst accepts an array
#and returns a new array. The new array
#will have all the values from the original one cubed. (do kwadratu)
puts

numbers=[3,8,11,15,89]
def cubes(array)
  cubed= array.map {|num| num ** 3}
end

p cubes(numbers)
p cubes([2,5,677,123])

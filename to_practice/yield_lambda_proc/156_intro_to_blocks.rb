#block is a collection of code to be executed
#block is NOT a object
#attachment that fallows a method call
#block can not exist whitout a method
#block alters execution of the method
#block is not the same as argument or parameter to the method
#block can get or update the value of local variable within the block
#|variable| those are local variables for block

#method vs block
#method can can be invoked over and over
#block can be invoked once and than it disappear
#block isolates actions away from the method
  #we call block when action we want to attach to method is customized
  #method is consistant, block is custom
  #example:    #block is inside {}
  [3, 5, 7, 9].each {|num| puts num ** 2}

##blocks in action
#in this block we say what will be done over every item iteration
evens = [2, 4, 6, 8, 10]
evens.each {|number| puts number ** 3}
puts

#in this block we say how to mutate output array
colors = ["Red", "Purple", "Green", "Blue"]
statments = colors.map {|color| "#{color} is a great color"}
puts statments
puts

#do and end are also a block
#in this block we say what we want to be done x times
5.times do |index|
  puts index
  puts "Let's move on to the next loop"
end

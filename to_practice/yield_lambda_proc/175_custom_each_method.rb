#method- we want to take care of all prereq- all we can predict
#block- custom operations- all we can't predict
#example each methods knows it has to iterate over every item
  #it does not know what you want it to do with it
  #behind the scenes each method, yields every element to block

#create each method
#we do not want to create two methods for similar operations
# thanks to this we can leave what we want to do (iterate and use objects in array)
#and we can leave reast outside of the method
def custom_each(array)
  i = 0
  while i < array.length
    #yield will pass this element to the block
    yield array[i] #each and single element of array iterate
    i += 1 #to stop infinite loop
  end
end

#In this case you do not have to write seperate methods for each operation
#you can itarate over names or multiply the numbers with same method
names = ["Boris", "Arnold", "Melissa"]
numbers = [10, 20, 30]


#method iterates over each name in array
# yield passes it to the block, we can use it in local variable
custom_each(names) do |name|
  puts "The length of #{name} is #{name.length}!"
end

#we can use same method on compleatly different array changing the block attached
custom_each(numbers) do |number|
  puts "the square of #{number} is #{number ** 2}"
end

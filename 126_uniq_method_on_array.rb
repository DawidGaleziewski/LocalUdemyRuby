#returns new array with duplicates
numbers= [1, 1, 1, 2, 2, 3, 4, 5, 1, 2]
p numbers.uniq #removes duplicates, will keep only one occurance
p numbers
puts
numbers.uniq! #bang
p numbers
puts

numbers= [1, 1, 1, 2, 2, 3, 4, 5, 1, 2, 6]
#custom method
def custom_uniq(array)
    new_array= []
    array.each do |num|
      unless new_array.include?(num)
        new_array << num #shovel, same as push
      end
    end
    new_array
end

p custom_uniq(numbers)


#refine
def custom_uniq_refine(array)
  final=[]
  array.each {|element| final << element unless final.include?(element)}
end

#- sing
p [1, 1, 1, 1, 2, 2, 2, 2, 4, 4, 4, 6, 7] - [2, 4] #on right side you will see elements
#to be removed from the array
#- behind the hood is nothing more than a method, therefore:
p [1,1,1,2,2,3,3].-([1,2]) #whitour sugar

a=[1,2,3,4,5,6]
b=[5,6]
puts
#custom subtraction
def custom_subtaction(arr1, arr2)
  new_array= []
  arr1.each do |item|
    unless  arr2.include?(item)
      new_array<< item
    end
  end
  new_array
end

p custom_subtaction(a,b)

#refine
def custom_subtaction_refine(arr1, arr2)
  final=[]
  arr1.each {|value| final << value unless arr2.include?(value)}
  final
end

p custom_subtaction(a, b) == (a - b)

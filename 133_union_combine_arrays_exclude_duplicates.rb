p [1, 2, 2, 2, 3] | [3, 4, 4, 4, 5] | [1, 2, 3, 4, 5] #this will join arrays and remove duplicates
#this is simply a method |
p [1, 2, 3, 4].|([3,4,5,6,])
# | is visual shortcut aka sugar

a= [1, 2, 3, 4]
b= [3, 4, 5, 6]

#custom union
def custom_union(array1, array2)
  both_arrays= array1 + array2
  final_array= []
  both_arrays.each do |item|
    unless final_array.include?(item)
      final_array << item
    end
  end
  final_array
end

puts
p custom_union(a,b)

#better way

def custom_union_refine(arr1, arr2)
  arr1.dup.concat(arr2).uniq #dup to not create alias
end

p custom_union_refine(a, b)

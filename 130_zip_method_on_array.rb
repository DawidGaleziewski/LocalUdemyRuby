#combines elements of one or multiple arrays shared on index position
names = ["Bo", "Moe", "Joe"]
registrations = [true, false, false]

p names.zip(registrations) #this will bind elements by index into nested array
p [1, 2, 3].zip([3, 5, 6], ["A", "B", "C"]) #can combine multiple arrays

#challange
def custom_zip(arr1, arr2)
  final=[]
  arr1.each_with_index do |item, index|
    nested_array= []
     arr2.each_with_index do |item2, index2|
       if index == index2
         nested_array << item
         nested_array << item2
         final << nested_array
       end
     end
  end
  final
end
puts

p custom_zip(names,registrations)

#resolution
def custom_zip_refine(arr1, arr2)
  final = []
  arr1.each_with_index do |value, index|
    final << [value, arr2[index]] #interesting thing- create a array schema
    #it will use curent value and element  from arr2 with index
    #trick is that the index is the same on 2 arrays
  end
  final
end

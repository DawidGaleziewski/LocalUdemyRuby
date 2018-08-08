#isolating common elements of two arrays

p [1, 1, 2, 3] & [1, 2, 3, 4, 6] # no duplicates
p [1,2,2,4, 6] & [4,6,7,7] & [6,2,6,6] #can multiple arrays

#as always this is just a sugar for array
p [1, 1, 2, 3, 4, 5].&([1, 2, 4, 6, 7])

a1 = [1, 2, 3, 4, 6, 7, 8]
a2 = [4, 5, 6, 7,12]

#custom intersection &
def custom_intersection(arr1, arr2)
  new_array= []
  arr1.each do |item|
    if arr2.include?(item) && !new_array.include?(item)
      new_array << item
    end
  end
  new_array
end

puts

p custom_intersection(a1, a2)

#refine
def custom_intersection_refine(arr1, arr2)
  final = []
  arr1.uniq.each do |element| #delete dups, this is better than my method
    #it lowers the iterations on each loop
    final << element  if arr2.include?(element)
  end
  final
end

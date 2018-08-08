p [1,2,3] + [4,5] #more common due to simple syntax
p [1, 2, 3].concat([4,5])

#it modiefies original array just like bang method

def custom_concat(arr1, arr2)
  #Return arr1 with all od the elements from arr2
  #added to the end of it
  arr1 + arr2
end

array1=[1,2,3,4]
array2=[7,78,9,96]

def custom_concat_2(arr1, arr2)
  arr2.each{|number| arr1 << number } #also arr1.push()
  arr1
end

p custom_concat_2(array1,array2)

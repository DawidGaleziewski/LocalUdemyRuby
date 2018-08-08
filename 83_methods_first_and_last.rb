arr = [1, 2, 3, 4, 5, 6, 7, 21]
p arr.first(3) # argument accepted is number of characters
p arr.last(1) #enen if its only one element , if you give it a argument, it will return as array

#to do again!
def custom_first(arr, num= 0)
  arr[0..num]
end

def custom_last(arr, num= 0)
  arr[((arr.length) - num)..(arr.length - 1)]
end

p custom_first(arr, 6)
p custom_last(arr, 3)

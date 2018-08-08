arr = [1, 2, 3, 4, 5, 6 ,7, 8, 9, 10]
arr.pop
p arr
arr.pop #it removes the value, but also  returns it

last_item = arr.pop
p arr
p last_item #item taken away

two_items= arr.pop(2) #if its called with argument it will always return a array
p two_items #stored array of two items

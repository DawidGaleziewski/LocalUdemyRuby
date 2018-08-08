fruits = ["Apple", "Orange", "Grape", "Banana"]
p "hello".length
p fruits.length #shows total number of objects, not characters

#every item has a index possition
#["Apple" 0, "Orange" 1, "Grape" 2, "Banana" 3]
p fruits[0]
p fruits[1]
p fruits[2]
p fruits[25] #nil
p fruits[-1]

p fruits[fruits.length - 1] # last item in array
p fruits.[](-1) # as this is the method this is same method that above

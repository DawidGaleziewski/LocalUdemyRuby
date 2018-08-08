#ascending order

numbers= [5, 6, 7, 1, 2, 4, 5, 6, 8]
words= ["table", "spoon", "fork", "akali", "banna", "Zebra"]
#capitals come first


p numbers.sort
p words.sort

#with bang method
numbers.sort.reverse!
words.sort.reverse!

p words

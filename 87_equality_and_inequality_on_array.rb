a = [1, 2, 3]
b = [3, 2, 1]
c = [3, 2, 1,4]
d = [1, 2, 3]
p a == b # array needs to have same elements in same order, to be equal
p a == c
p a != c
p a == d

a = ["skittles", "snickers"]
b = ["Skittles", "snickerS"]
p a == b #capital sensitive

#array containing other arrays

users = [["Bob", 25, "Male"], ["Susan", 30, "Female"], ["Larry", 100, "Male"]]

p users[0][0] #as the first index possition gives array we can continue
#selecting next index in this arrays

#how to unpack those arrays?


bob, susan, larry = users #this will unpack the arrays putting them in the variables
# if its not equal, it will jus asign how many it can

p bob
p susan
p larry

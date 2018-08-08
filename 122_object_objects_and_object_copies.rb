#those arrays may seem the same
#but they point objects that differ in possition, in the memory
a = [1, 2, 3]
b = [1, 2, 3]
#it only look the same
p a.object_id
p b.object_id #numbers getting back differ
p a.object_id == b.object_id # those are NOT the same

c = [1, 2, 3]
d = c #d becomes alias of c. c and d are diffrent variables
#but they point to the same object. They just have diffrent name
p d == c

c.push(4)
p c, d #both of them will have 4 now!

# often you do not want to create a alias but a copy
c = d.dup #this will create duplicate and not a alias
p c.object_id == d.object_id # now they diffent

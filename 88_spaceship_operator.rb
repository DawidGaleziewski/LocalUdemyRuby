#<=> one of 4 values
#0 if two values are equal
p 5 <=> 5
# -1 If left is smaller the value will be
p 5 <=> 10
#1 if right side is larger
p 21 <=> 3
#nil when ruby cannot compare
p 5 <=> [1, 2, 3]

#used for custom sort
  #same
a = [3,4,5]
b = [3,4,5]
p a <=> b

 #nil
d=[nil, "blah"]
p a <=> d

#
a = [4,4,5]
e= [3,4,10]
p a <=> e # compares values one by one, first match

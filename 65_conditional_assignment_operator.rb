y= nil
p y

y = 5
p y

y = 10
p y

y = nil
#It will only asssign this value, if current value is nil
y ||= 5
p y

y ||=10

p y


#use it when you are not sure if the value you will get is nill

greeting = "Hello"
extraction = 0
letter = greeting[extraction]
letter ||= "Not found"
p letter

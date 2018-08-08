p 5
p 5.next
#convert to string
p 5.to_s

# interpolation- insert something into something
name = "Garry"
p name
#interpolation is done by #{string or variable}
p "Hello #{name}, how are you?"
age = 25

# adding variable to string will throw an error
# however this can be done by firstly converting variable to string
#use .to_s method
p "I am " + age.to_s + " years old."

#string interpolation makes it easier to read and write
# it converts variable to string
p "I am #{age} old"

p "The resault of adding 1 + 1 is #{1 + 1}"
p "In five years, I wil be #{age + 5} years old."

x = 5
y = 8
p "The sum of x and is #{x + y}"

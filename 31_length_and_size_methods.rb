a = "Hello world"
b = "Hi, my name is Dawid"
c = " "
d = ""

p a.length
p b.length
p c.length
p d.length
puts

#size and length methods have the same output
p  a.size

puts

#this is a fixnum object
#we can chain methods on object getting diff classes like bool, int etc
p a.length.next.odd?

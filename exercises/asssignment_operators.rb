#adding
a = 10
a += 10
p a
#subtracting
a -= 15
p a
#multiply
a *= 4
p a
#divide
a /= 5
p a
puts
#power
a **= 2
p a

#modulo
a %=3
p a

b = "Random String"
b += " /Second Random String"
p b
#subtracting - cant!
# b -= " /Second Random String" cannot use on string
#multiply
b *= 4
p b #works

puts

c = ["a", "b", "c"]
c += ["d"]

#subtracting
c -= ["d"]
p c # can subtract on array!

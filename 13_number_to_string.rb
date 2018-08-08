str = "5"
p str
p str.class
#chain methods /change to int / check class
# it is temporary change
p str.to_i.class

p str.to_f
p str.to_f.class

# numbers to string
number = 10
p number.class
p number.to_s.class

p number.to_f
p number.to_f.class

#floats
pi = 3.14
#decimal points gets choped off
p pi.class
p pi.to_i.class

p pi.to_s
p pi.to_s.class

#can change class to current class
p "5".to_s.class
p 10.to_i.class
p 99.99.to_f.class

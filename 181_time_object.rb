#time and date
#two options to create Time object
puts Time.new #this will create a time of NOW
#2018-06-25 09:08:52 +0200
today = Time.new
p today.class #it is Time clas

#alias of this operation
today = Time.now
p today

#.new for specyfing time with date, whitout argument its like .now
#.now - current time

#first argument is year
p Time.new(2015)
#2015-01-01 00:00:00 +0100 - Ruby assumes rest is just the start if not supplied
p Time.new(2015, 5)
p Time.new(2015, 5, 27, 14, 26, 3) #14:26:3

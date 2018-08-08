# input is called a ARGUMENT
# parameter is a placeholder name of excepted input/argument
p 20.between?(10, 30)
p 20.between?(30, 50)
p 1.2.between?(1.1, 1.3)
p -10.5.between?(-20, 0)

#float methods
p 10.9.to_i
puts "100.9".to_i
puts
p 10.5.floor #rounds number down to input
p 10.5.ceil #rounds up

p 3.14159.round # rounds depending if its <> .5
p 3.6.round
p 3.14159.round(2) #parameter shows how many places after 0 it rounds # TODO:

p -35.67.abs # absolute number. Number from 0

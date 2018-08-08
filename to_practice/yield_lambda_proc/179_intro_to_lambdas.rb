#Lambda is like namless or empty meyhod
#seems to be very similar to Proc
#they are objects
#both lambda and proc come from proc class
#lambda can be used whenever Proc is used
squares_lambda= lambda {|number| number ** 2}
squares_proc = Proc.new {|number| number ** 2}

p [1, 2, 3].map(&squares_proc)
p squares_proc.call(5)
puts
#same way that Proc is used lambda can
p [1, 2, 3].map(&squares_lambda)
p squares_lambda.call(5)

#2 diffrences for lambda and proc
#lambda is generaly more popular than Proc
#due to fact its used in other p languages
#lambda behaves as  method
#lambda cares about number of arguments passed, proc will ignore additional ones
some_proc = Proc.new {|name, age| "Your name is #{name} and your age is #{age}"}
p some_proc.call("Boris", 25)
p some_proc.call("Boris") #now its going to assign nil to age
p some_proc.call()
puts
#compare this to lambda
some_lambda = lambda {|name, age| "Your name is #{name} and your age is #{age}"}
p some_lambda.call("Boris", 25) #normal  resault
# p some_lambda.call("Boris") #this will throw nil. NOT assign nil to it
# p some_lambda.call()# same error

##Another difference
def diet #return was returned here
  status = lambda {return "you gave in"}# we should not use return in blocks, but lambada is an object
  status.call #when calling lambda it returns back to the method
  "You completed the diet!" # this is the final retuen value
end

p diet
puts
def diet_proc
  status = Proc.new {return "You gave in!"}# this will return for entire method! Not just the proc
  status.call
  "You completed the diet!"
end

p diet_proc #return value of the proc

#lambda is more popular
 #they will return method, not return value of lambda as wehole method
 #they acceplt only specified number of arguments

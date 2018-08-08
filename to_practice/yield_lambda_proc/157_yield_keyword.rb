#yield - stops execution of method and waits for the block
# transfers control from method to block
#we can customize how method operate
def pass_control
  puts "This is inside the method!"
  yield # Pass control from method to the block
  puts "Now I am back inside the method"
end

pass_control {puts "Now I'm inside the block"} # block takes over the control
# when using yeld Ruby expects block, whitout it, it will throw error
puts

pass_control do
  puts "again back on the block!"
end

puts
def who_am_i
  adjective = yield
  puts "I am very #{adjective}"
end

who_am_i{"handsome"}
who_am_i{"talented"}
puts
#blocks implicitly (niejawnie) retuern back the last evaluation back to the method
#do NOT use return as its going to trigger a error
# error: who_am_i{ return "handsome"}


#using multiple yield
def multiple_pass
  puts "Inside the method"
  yield
  puts "Back inside the method"
  yield
end

multiple_pass {puts "Now I'm inside the block"}

#when we put this inside the variable
result = multiple_pass {puts "Now I'm inside the block"}
p result #result is going to be nil
#this is cause:
 #what is returned by method is last expression
 #our last expression is yield, which is in our case:
 #{puts "Now I'm inside the block"}
 #the output from puts statment is not what it shows, but NIL
 #nil is returned as final implicit block return

# however if we delete puts, returned value is a string
 result = multiple_pass {"Now I'm inside the block"}
 p result

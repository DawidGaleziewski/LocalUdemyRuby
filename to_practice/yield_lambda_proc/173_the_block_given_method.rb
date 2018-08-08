#boolean
#security in case method block is not attached to method that expects it
#simply write "if block_given?" inside method
def pass_control_on_condition
  puts "Inside the method"
  if block_given? # only if block is given. I want to yield to the block
    yield
  end
  puts "Back inside the method"
end

pass_control_on_condition{puts "Hello there"}
puts
#thanks to this error control it wont return error, if there is no block added to method

pass_control_on_condition

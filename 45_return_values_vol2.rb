def nothing
end

p nothing # returns nil

def return_string
   "what will be return value here?"
end

def return_guess
  puts "What will be the return value here"
end

p return_string # return string
p return_guess #return nil- we are returning result of puts method.
#puts will return always nil
result= return_guess
result.class

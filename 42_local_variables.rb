#local variable exists only in methods

#those variables are separate!
expression = "I am handsome"

def introduce_myself
  expression= "I am a genius"
  puts expression
end

introduce_myself
#puts expression-  this is local to methods

introduce_myself
introduce_myself
introduce_myself # this will use local variable
puts expression #this will use global variable

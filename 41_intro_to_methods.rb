#method starts with def
#it should be lowercase snake format
def introduce_myself
  #two spacebars indent are best practice for methods
  puts "I am handsome"
  puts "I am talented"
  puts "I am brilliant"
end #here method ends

introduce_myself #this invokes methods
introduce_myself
introduce_myself
puts
3.times {introduce_myself}
puts
#methods can be invoked with () however they SHOULD be used only when  need args
puts

#unique for procs

def greeter
  puts "I'm inside the greeter method"
  yield
end

phrase = Proc.new do
  "Inside the proc"
end
greeter {puts "Hello from the custom block"}

puts

greeter(&phrase)
#block is not the objec but Proc is
#therefore, block does not have methods, but Proc does
p phrase.class

#Procs can be called directly from method call

 hi = Proc.new {puts "Hi there"}
5.times(&hi)
puts
#call method on proc
hi.call #call on Proc. block inside it gets executed by itself

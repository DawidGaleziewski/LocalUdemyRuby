#with arguments to pass to block
def speak_the_truth
  yield ("Boris") if block_given? #this is what block definitions in block variables will stand for
end

#name is the variable thats assigned to whatever is yield
speak_the_truth{|name| puts "#{name} is brilliant"}
#what is happening:
  #"Boris" is passed to the block
  #block defines "Boris" as name variable
  #intrapolates it into the string {|name| puts "#{name} is brilliant"}
speak_the_truth{|name| puts "#{name} is awesome"}
puts

def speak_the_truth_v2(name)
  yield name if block_given?
end

#takes argument provided puts it to the block and intrapolates it
speak_the_truth_v2("Dawid"){|name_v1| puts "#{name_v1} is briliant"}

#adding more arguments
def speak_the_truth_v3(name)
  yield name if block_given?
end
puts

speak_the_truth_v3("Sarah") do |name, age|
  p name
  p age #returns nil as it has no argument
  puts "#{name} is #{age} old"
end

puts

##mutiple arguments for yield
def number_evaluation(num1, num2, num3)
  puts "Inside the method"
  yield num1, num2, num3
end

#mutliplication has occured otside the method.
#inside the block
product = number_evaluation(5, 10, 15){|num1, num2, num3| num1 * num2 * num3}
sum = number_evaluation(5, 10, 15){|num1, num2, num3| num1 * num2 * num3}

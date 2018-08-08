#evry method returns a value
def add_two_numbers(num1, num2)
  puts "Ok, I am solving your math problem"
  return "just kidding" #this will be the last thing returned
  num1 + num2 #retun conculdes whole method.
  #explicit return- returns value specyfied
  #implicit method return- returns last value in the body
  #this is final outcome of the method
  #if we would write num1 + num2 it would have same outcome
  
end

p add_two_numbers(3, 5) #whitout p it is not going to be returned
p add_two_numbers(8, 4)

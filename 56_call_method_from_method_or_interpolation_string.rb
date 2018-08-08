def add (a, b)
  a + b
end

def subtract (a, b)
  a - b
end

def multiply (a, b)
  a * b
end

def calculator (a, b, operation = "add")
 if operation == "add"
   "The result of adding is  #{add(a, b)}"
 elsif operation == "subtract"
   subtract(a, b)
 elsif operation == "multiply"
   multiply(a, b)
 else
   "that is not a real math operation genius"
 end
end

p calculator(2, 5, "subtract")
p calculator(10,20 , "multiply")
p calculator(2,2)

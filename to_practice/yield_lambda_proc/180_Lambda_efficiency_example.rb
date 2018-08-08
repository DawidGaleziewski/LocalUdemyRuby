#how Lamdas improve your code

def convert_to_euros(dollars)
  if dollars.is_a?(Numeric)
    dollars * 0.95
  end
end

def convert_to_pesos(dollars)
  if dollars.is_a?(Numeric)
    dollars * 20.67
  end
end

def convert_to_rupees(dollars)
  if dollars.is_a?(Numeric)
    dollars * 68.13
  end
end

p convert_to_euros(1000)
p convert_to_pesos(1000)
p convert_to_rupees(1000)

#as there is a loot repetition we can improve this
#refine by changing syntax
# <action> if condition
def convert_to_euros_1(dollars)
  dollars * 0.95 if dollars.is_a?(Numeric)
end

def convert_to_pesos_1(dollars)
  dollars * 20.67 if dollars.is_a?(Numeric)
end

def convert_to_rupees_1(dollars)
  dollars * 68.13 if dollars.is_a?(Numeric)
end

#compact 3 statments into one method
def convert(dollars, currency)
  yield(dollars, currency) if dollars.is_a?(Numeric)
end

p convert(100, "euros"){|dollars| dollars * 0.95}
p convert(100, "pesos"){|dollars| dollars * 20.67}
p convert(100, "rupees"){|dollars| dollars * 68.13}
puts

#further refine by packing custom block into lamdas
#copy the block and put lamda in front
to_euros = lambda {|dollars| dollars * 0.95}
to_pesos = lambda {|dollars| dollars * 20.67}
to_rupees = lambda {|dollars| dollars * 68.13}

def convert_2(dollars, currency_lambda)
  currency_lambda.call(dollars) if dollars.is_a?(Numeric)
end

p convert_2( 100, to_euros)
p convert_2(100, to_pesos)
p convert_2(100, to_rupees)

puts

#we can now use this lamda on array making it more efficiant
p [1000, 2000, 3000].map(&to_euros)
p [1000, 2000, 3000].map(&to_pesos)

puts 4 * 3
puts "Ruby" * 5
puts
p [1, 2, 3] * 5 #returns new array, that has old values repeated couple of times
p ["A", "B", "C"] * 4

#custom- whitout asterisk symbol
def custom_multiply(array, number)
  new_array=[]
  number.times do
    new_array << array
  end
  new_array.flatten
end

array=[1,2,3]

p custom_multiply(array, 5)

#refine

def custom_multiply_refine(array, number)
  result = []
  number.times {array.each {|elem| result << elem}}
  result
end

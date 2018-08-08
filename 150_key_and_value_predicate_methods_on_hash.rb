#boolien methods
cars = {toyota: "camry", chevrolet:"aveo", ford: "F-150", kia: "soul"}

puts cars.key?(:toyota)
puts cars.key?(:kia)
puts cars.key?(:ferrari)

#values
puts cars.value?("camry")
puts cars.value?("soul")
puts cars.value?("pasat")

#old methods used in past
#those are the same as kay? value?
puts cars.has_key?(:gm)
puts cars.has_value?("soul")

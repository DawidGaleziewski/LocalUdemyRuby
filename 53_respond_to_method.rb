num= 1000
if num.respond_to?("next")
  p num.next
end

if num.respond_to?("length")
  p num.length
end

puts "hello".respond_to?("length")
puts "hello".respond_to?("odd?")

#symbol
puts "Hello".respond_to?(:downcase)

p num.respond_to?("length") # check if the method can be used on variable

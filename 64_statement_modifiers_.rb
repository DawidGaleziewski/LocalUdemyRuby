number = 5000

if number > 2500
  puts "Huge number!"
end

#one line modifiers should be used if the body of the statment is one line long

puts "Huge number!" if number > 2500


verified = true
if number > 2500 && verified
  puts "Huge number!"
end

puts "Huge number!" if number > 2500 || verify
puts

x= 8
unless x > 10
  puts "x is NOT greater than 10"
end

puts "x is NOT greater than 10" unless x > 10

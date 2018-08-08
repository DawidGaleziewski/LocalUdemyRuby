#not popular in ruby, each is ussed more
#does not create new local scope
numbers= [3, 5 ,7]
num=10000
numbers.each {|num| puts num } #block variable/temporary variable
puts
p num #10 was not overwriten
puts

#for loop
for num in numbers # it is not local!
  puts num
end

p num # it is still equal to last item in array
puts

#same for range
range= 1..10
range.each {|range_number| puts range_number}

for ran in range
  puts ran
end

puts
p ran

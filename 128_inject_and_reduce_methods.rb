#inject and reduce are the same
#keeping track on computetion on previous iteration that you are currently on
#for example when iteration is done on array
result = [10, 20, 30, 40].reduce(0) do |previous, current|#what we represent aa previous value
  puts
 puts "The previous value is #{previous}"
 puts "current value is #{current}"
 previous + current #10 - pass it to next iteration
end
#we add values to 0 add two values
#10 + 20 =30, take this value add it to the next etc

puts result
#previous represent last calculation we did
#argument represents the very first thing

result_1= [3, 4, 5, 6, 7].reduce(1) do |previous, current|#watch out! if 0 is passed as first for rolling product
#it will be 0*3=0 etc. So we need to start from 1
puts
  puts "previous value is #{previous}"
  puts "current value is #{current}"
  previous * current
end

p result_1

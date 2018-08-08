#when you need to keep track of index of the array
colors = ["Red", "Blue", "Green", "Yellow"]

colors.each_with_index do |color, index| #second variable is index position
  puts "Moving on index number #{index}"
  puts "the current color is #{color}"
end

#problem:
#write a loop that iterates over a numeric array
#Output the PRODUCT of each number and its index position

fives= [5,10,15,20,25]
fives.each_with_index do |number, index|
    puts "this is number #{number}"
    puts "its index is #{index}"
    puts number * index
end

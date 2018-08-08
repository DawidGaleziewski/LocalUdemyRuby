candies = ["Milky Way", "Lolipoop", "Sugar"]
candies.each do |candy|
  puts "I love eating #{candy}"
end

puts

names= ["bo", "moe","joe"]

names.each {|name| puts name.upcase}
puts

[1, 2, 3, 4, 5].each do |num|
  square= num * num
  puts " the square of #{num} is #{square}"
end

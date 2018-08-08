animals=["Lion", "Zebra", "Baboon", "Cheetah"]

i= 0

#oldschool method of Iteration
while i < animals.length #4
  puts i
  puts animals[i]
  i += 1
end

#same with until loop

i = 0
until i > animals.length
 puts i
 puts animals[i]
 i += 1
end

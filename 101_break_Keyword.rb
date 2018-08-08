prizes= ["Pyrite", "Gold", "Pyrite", "Gold"] # Goal is to stop on first Gold

i = 0
while i < prizes.length
  current= prizes[i]
  if current == "Gold"
    puts "Yay! Found gold"
    break #breaks the while loop
  else
    puts "#{current} is not gold!"
  end
  i += 1
end


#same but breaking on each
numbers = [1, 2, 3, "Hello", 5, 6, 7, 8]

numbers.each do |num|
  if num.is_a?(Fixnum)
    puts "The square of #{num} is #{num ** 2}"
  else
    puts "That is not valid number, fuck you I quit"
    break
  end
end

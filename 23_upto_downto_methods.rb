#Method on int class
#accept argument
#accept blocks
5.downto(1) {|i| puts "Countdown: #{i}" }

5.downto(0) do |current_number|
  puts "We are currently on #{current_number}"
  puts "Hooray!"
end

puts "Liftoff!"

10.upto(100){|i| puts "Number is #{i + 1}"}

5.upto(100) do |num|
  puts "We're moving on up!"
  puts "We are currently on #{num}"
end

100.downto(0) do |zwrotka|
puts "#{zwrotka + 3} Siedziałem na słupku na prawym półdupku, a lewy półdupek zwisał za słupek"
puts "#{zwrotka + 2} Hop siup zmiana dup!"
puts "#{zwrotka + 1} Siedziałem na słupku na lewym półdupku, a prawy półdupek zwisał za słupek"
end

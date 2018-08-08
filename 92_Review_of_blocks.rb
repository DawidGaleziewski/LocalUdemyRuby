# two methods of providing blocks
3.times { puts "Hello there"} #this is blocks
3.times {|number| puts "I am currntly on loop #{number}"} # |number| shows current iletaration of the loop
puts
5.times do |number|
  square= number * number
  puts "current number is #{number} and square is #{square}"
end
#amything in the block is tossed out after its done

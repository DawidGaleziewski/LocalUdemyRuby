# times- execute process 5 times
# blocks can be done by {}, or do end
 # {} method

 # best practice is to use {} for one liners, do and end for multiple lines
5.times { puts "Dawid is awesome"}

3.times do
  puts "Dawid is awesome"
  puts "Fuck bitches"
end

#i does not exist outside of this block,
#as this is bloc variable
3.times do |i|
  puts "We are currently on loop number #{i + 1}"
  puts "random"
  puts "Random"
end




3.times {|count| puts "This is #{count} loop"}

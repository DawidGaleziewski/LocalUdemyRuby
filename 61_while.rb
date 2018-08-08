i = 1
while i < 10
 puts i
 i += 1
end

puts

p i

status = true
#while to create infinite loop scenarios
while status
  print "Please enter username:"
  username = gets.chomp.downcase
  print "please enter your password"
  password = gets.chomp.downcase
  if username == "boris" && password == "bestpassword"
    status= false
  elsif username == "quit" || password == "quit"
    puts "Goodbye!"
    status = false
  else
    puts "incorect combitation or enter quit to leave"
  end
end

# i = 2
# while i.even?
#   puts i
#   i += 1
# end

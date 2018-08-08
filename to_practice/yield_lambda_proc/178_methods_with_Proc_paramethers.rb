def talk_about(name, &myprc)
  #we need to define proc paramether with &
  puts "Let me tell you about #{name}"
  myprc.call(name) # wo do not prefix it with & in method body
end

good_things = Proc.new do |name|
  puts "#{name} is a genius!"
  puts "#{name} is jolly good fellow"
end

bad_things = Proc.new do |name|
  puts "#{name} is a dolt!"
  puts "I can't stand #{name}!"
end

talk_about("Boris", &good_things)
puts
talk_about("Leslie", &good_things)
puts
talk_about("Brock", &bad_things)

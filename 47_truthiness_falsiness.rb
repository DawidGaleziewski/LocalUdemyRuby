if 5 < 8
  puts "that is true"
end

if true
  puts "that is true"
end

if 5 #truthy, ruby considers this to be ok
  puts "That is true"
end
# false and nil are only falsy values in ruby

if nil
  puts "something"
end

if "hello"
  puts "hello"
end

if -123124
puts "hello 1"
end

if {}
 puts "True"
end

if 5..19
  puts "true"
end

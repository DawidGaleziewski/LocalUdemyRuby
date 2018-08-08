password = "dominoes"
if password == "whiskers"
  puts "Not allowed!"
else
  puts "welcome"
end

#unless is "execute if false"

unless password == "whiskers"
  puts "not allowed!"
else
  puts "come in"
end

unless password.include?("a")
  puts "it does not include A"
end

if !password.include?("a")
  puts "it does include A"
end

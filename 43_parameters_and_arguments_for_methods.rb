# () is used to define parameters.
#now method requires arguments to run!
def praise_person(name, age)
  puts "#{name} is amazing"
  puts "#{name} is charming"
  puts "#{name} is talented"
  puts "#{name} is #{age} years old"
  puts "In 5 years he is going to be #{age + 5}"
end
praise_person("Dawid", 28)
praise_person("Boris", 30)
# if you give any argument its good to wrap it in ()

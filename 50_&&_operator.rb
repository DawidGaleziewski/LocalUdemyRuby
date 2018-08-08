#when couple conditions need to be meet
age = 25
ticket ="Nothing"
id= true

if age > 21 && ticket == "General Admission" && id == true
 puts"Cograts you are in, bro!"
end

#refine this statments
#truthines
#ticket will be true, if it has any value
if age > 21 && ticket && id # this uses truthiness
puts "Howdy"
elsif ticket && id
  puts "come in"
end

#short circut evaluation
#ruby will stop on first false evaluation. starting from left

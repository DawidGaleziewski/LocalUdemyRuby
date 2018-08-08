#FOR some reason works from terminal but not from atom runner
puts "This is the begining"
#load will - load the file and execute its contents
load "end.rb"

puts "Ok it worked"

load "./end.rb" #./ this is "in current directory"

if 8 > 5
  load "end.rb"
end

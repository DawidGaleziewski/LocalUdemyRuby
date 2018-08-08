#File.open("190.txt", "r") # second argument by default is r for read
#w will overwrite anyhing inside the tex file,
#if something does not exist ruby will create it and write to it
File.open("190.txt", "w") do |file|   #w for write
  file.puts "Creating this from ruby"
  file.write "No line break here!"
  file.puts "Pretty cool!"
end

##inside terminal
#cd /d d:
#cd D:\Programy Instalki\ruby\190_write
#190_write.rb

#a will append the file
File.open("190.txt", "a") do |file|   #w for write
  file.puts "This will only append the file"
  file.print "Anolther line"
  file.write "Another line"
end

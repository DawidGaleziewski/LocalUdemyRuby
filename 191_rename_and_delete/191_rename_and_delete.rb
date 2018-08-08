if File.exist?("191_to_delete.txt")
  File.rename("190_to_rename.txt", "190_renamed.txt") #oldName, newName
end
##inside terminal
#cd /d d:
#cd D:\Programy Instalki\ruby\190_write
#190_write.rb

if File.exist?("191_to_delete.txt") # error control with .exist? method
 File.delete("191_to_delete.txt")
end

#inside commandline:
#ruby <name of the file> 3 5 6 7 80

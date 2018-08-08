#commands recived by rubby are supplied in array
#ARGV referances that array of values
#arguments will  be supplied as strings
ARGV.each do |argument|
  number = argument.to_i
  puts "The square of #{number} is #{number ** 2}"
end


# Microsoft Windows [Version 10.0.17134.112]
# (c) 2018 Microsoft Corporation. Wszelkie prawa zastrzeżone.
#
# C:\Users\m14>cd D:\Programy Instalki\ruby
#
# C:\Users\m14>cd /d d:
#
# D:\Programy Instalki\ruby>ruby 192_ARGV_command_line_arguments.rb 3 5 6 7 20
# 192_ARGV_command_line_arguments.rb:4:in `<main>': uninitialized constant ARVG (NameError)
# Did you mean?  ARGV
#
# D:\Programy Instalki\ruby>ruby 192_ARGV_command_line_arguments.rb 3 5 6 7 20
# The square of 3 is 9
# The square of 5 is 25
# The square of 6 is 36
# The square of 7 is 49
# The square of 20 is 400
#
# D:\Programy Instalki\ruby>

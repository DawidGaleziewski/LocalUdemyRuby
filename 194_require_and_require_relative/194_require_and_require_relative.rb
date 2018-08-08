#function same as load
#however require when called more than once on file wont bother
#when importing modules/ functionalieties from another file
#"you do not require a file, you require a feature"
#by default it looks in ruby installation directory, not the curent directory you are in!
require "D:/Programy Instalki/ruby/194_require_and_require_relative/end.rb"
require "D:/Programy Instalki/ruby/194_require_and_require_relative/end.rb"
require "D:/Programy Instalki/ruby/194_require_and_require_relative/end.rb"
#once loading it wont bother to do this again, it wont execute more than once

#looks in the same folder, relative to current folder
require_relative "start.rb"
puts
#load nested file
require_relative "a/b/epilog.rb"

# dot .
phrase = "This is amazing <33 and aw33s0me phrase."
puts phrase.scan(/./) #gives back all items
puts phrase =~ /./ #index of first item
puts
puts phrase.scan(/.m/) #find any character fallowed by m ()
puts phrase.scan(/.aw/) #space is a valid "any character" and can be represent by dot
puts phrase.scan(/.is./)
puts phrase.scan(/aw..om./)
puts
puts phrase.scan(/..\d+.\d../) #aw33s0me in regex
#wildcard char + wildcard char + digits in a row +  wildcard char + one digit

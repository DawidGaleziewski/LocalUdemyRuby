#symbol that ties match with specyfic point into the string
#i.e beggining or the end
poem= "99 bottles of beer of the wall, 98 bottles of beer."
p poem.scan(/\d+/) #we only want to find first one
#\a anchor
p poem.scan(/\A\d+/) #chaining those, they need to by sticky or it wont work
p poem.scan(/\A\d/) #only first
#\A goes on the beggining of regex
puts
p poem.scan(/beer.\z/) #\z to search end of the string.
#it needs to be placed on the end

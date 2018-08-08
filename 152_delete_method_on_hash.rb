#delete from object. Takes hash key and deletes hash value
superheroes = {spiderman: "Peter Parker", superman: "Clark Kent", batman: "Bruce Wayne"}
p superheroes
superheroes.delete(:spiderman) # does not need bang method to delete
p superheroes

# it also returns value it removes
removed = superheroes.delete(:batman)

p removed #but only the kay not the value
# it only takes one argument

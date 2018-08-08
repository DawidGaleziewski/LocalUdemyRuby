#on Hash
#converts to array as its better datatype for ordering data
pokemon = {squirtle: "Water", bulbasaur:"Grass",
            charizard: "Fire"}
p pokemon.sort #returning array of nested arrays
#Notice! the array was sorted in alphabetical order by key
p pokemon.sort.reverse # if you want to reverse the order those are ordered

#sorty_by requires a block
p pokemon.sort_by
puts
p pokemon.sort_by {|pokemon, type| type} #need to just write the value it will be ordered by
p pokemon.sort_by {|pokemon, type| type}.reverse #chaining methods to reverse outcome

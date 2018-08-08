#hash is a object
#stores relationships btw objects
#it creates a "bridge" beetwen objecs
#A hash or a hash map is a data structure that stores key-value pairs
#can be called dictionaries, maps, associative arrays in other languages
#dictionarie is probably the best name for what it does
#connects words to definition, in programming key to value
#it can have diffrent keys pointing to same value (synonim)
#look word by keys. It does not store them in any order
#key and value:
  #can be a object of any type, flots ,int , arrays
  #key needs to be unique
  #values can be dup
  #Hashes should be treated as unordered

#{} - used to create hashes
empty_hash = {}
p empty_hash
p empty_hash.class

empty_array = []
p empty_array
p empty_array.class

p empty_hash.class == empty_array.class

words = ["dictionary", "doggy", "axolotl", "sun", "Kyle"]

p words.select {|word| word.length > 4} # all matches, returns array

# find == detect
p words.find {|word| word.length > 4} #only first match, object
p words.detect {|word| word.length > 4} #same

lottery = [4, 8, 15, 16, 23, 42]
result = lottery.find do  |number|
  number.odd? #any statment that returns bool
end
p result

#take last element
p lottery.reverse.find {|num| num.odd?}

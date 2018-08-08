grades= [90, 80, 13, 76, 29, 39]

#works similar to each
matches = grades.select do |number|
  #this will be bool value!
  number >= 75 #ruby will only select the truth values
end

p matches # only numbers that are >= will be put here


matches_evens = grades.select do |number|
  number.even? #can use methods as well as long as they return bool values
end

p matches_evens

words =["level", "selfless", "racecar", "dinosaur"]
#words the same when  they are spelled normaly and backwords
palindromes = words.select {|word| word == word.reverse}
p palindromes

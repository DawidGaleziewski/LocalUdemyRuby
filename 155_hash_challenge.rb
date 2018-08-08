sentence = "Once upon a time in a land far far away"

def word_count(string)
  #return hash where the kays will represent
  #the words in the string and the values will
  #represent how many times that key occurs
  # example :once => 1 ,:far => 2
  result = {}
  new_string = string.dup
  words = new_string.split(" ")
  frequency = 0
  words.each do |word|
    p word
     words.each do |word_to_compare|
       if word == word_to_compare && !result.key?(word)

         frequency += 1
       end
     end
     p frequency

    unless result.key?(word)
        result[word] = frequency
    end

    frequency = 0
    puts
  end
  result
end


p word_count(sentence)

#solution
def word_count_refine(string)
   words = string.split(" ")
   count= Hash.new(0) # we alter the error by setting default hash value to 0
   #even when we refer to "Once" first time its value is 0 not nil
   words.each do |word|
     #other approach, add one to value
     #this has its own issue as we will be adding to nil
     count[word] += 1
     #if the value does not exist yet it will have 0, after that it will be added 1
     #second time it will do:
     #count["far"] = 0
     #after that increment it by one
     #count["far"] += 1 (=1)
     #after this if the key is meet once again it is incremented by 1
     #count["far"] += 1 (1 + 1 )
   end
   count
end

p word_count_refine(sentence)

#refine more by shortening syntax
def word_count_refine_2(string)
  words = string.split(" ")
  count= Hash.new(0)
  words.each {|word| count[word] +=1}
  count
end


#challenge 2

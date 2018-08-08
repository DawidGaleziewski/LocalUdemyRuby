sentence = "Hi, my name is Boris. There are spaces here"
#split, splits string on common key/symbol etc
p sentence.split #whitout argument it will use space #this will return array
p sentence.split(" ") #this is how default looks like
p sentence.split(".")
p sentence.split("m")
p sentence.split(" i")
words = sentence.split(" ")

words.each{|word| puts word.length}

#challange
string= "can't touch this, can't touch this. Look at my eyes maaan. Let them know that you are to much, and this is a thing you can't touch"
def longest_word (sentence)
  words = sentence.split(" ")
  longest_word= ""
  words.each do |word|
    if word.length >= longest_word.length
      longest_word = word
    end
  end
  p longest_word
end

puts

longest_word(string)

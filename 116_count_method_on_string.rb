#number of occurences of substring

puts "hello world".count("l") # 3 L therefore gives back 3
puts "hello world".count("lo") #! gives 5!!! it  counts every occurance of l and # OPTIMIZE:
# order of characters does not matter
puts "An amazing aardvark appeared".count("Aa")

#challange custom count method
puts
sentence= "man who has hole in his pocket, feels cocky whole day"
def custom_count(string, search_characters)
 letters = string.split("")
 freq= 0
 letters.each do |letter|
   if letter == search_characters
     freq += 1
    end
 end
 p freq
end

custom_count(sentence, "a")

#refine the code

def custom_count_ref(string, search_characters)
  count = 0
  string.each_char do |char| #use each character so it will
    #change this to array of characters and go one by one
    if search_characters.include?(char) #better way of searching if character i  loop
      #is inlcuded in search characters
      count += 1
    end
  end
  count
end

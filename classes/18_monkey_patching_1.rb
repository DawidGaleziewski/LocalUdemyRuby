#we can change existing classes

#we have added sum to array, we have monkey patched it
class Array
  def sum #if we write a method that exists on instanced object we will overwrite it
    total = 0
    ##!! self keyword, it refers the object itself example if array will be part of the object we can use it
    self.each {|element| total +=element if element.is_a?(Numeric)}
    total
  end
end

#now we can use this method on array!
p [1,"hello", 2, false, 3].sum

class String
  def alphabet_sum
    alphabet = ("a".."z").to_a
    sum = 0
    self.downcase.each_char do |character|
      if alphabet.include?(character)
        numeric_value = alphabet.index(character) + 1
        sum += numeric_value
      end
    end
    sum
  end
end


puts "abcd".alphabet_sum
puts "zzz".alphabet_sum
puts "Hello world".alphabet_sum
puts "HELLO WORLD".alphabet_sum

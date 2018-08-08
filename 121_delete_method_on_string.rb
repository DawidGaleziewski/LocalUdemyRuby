puts "Hello world".delete("l") # deletes all occurences of L
puts "hello world".delete("ldr") #deletes all characters not in sequence

#challange custom method
def custom_delete(string, del_chars)
  chars = string.chars
  final = ""
  chars.each_with_index do |char, index|
    unless del_chars.include?(char)
      final += char # or use <<
    end
  end
  return final
end



puts

p custom_delete("hack me", "ha")

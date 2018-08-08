
class Book
  def initialize(title, author, pages)
    @title = title
    @author = author
    @pages = pages
  end

end

goosebumps = Book.new("Night of the Living dummy", "R.L. Stalin", 500)
p goosebumps
puts
#modify our existing class
class Book
  def read
    1.step(@pages, 10) {|page| puts  "Reading page #{page}"}
    puts "Done! #{@title} was a great book!"
  end
end

animal_farm = Book.new("Animal Farm", "Gorge Orwell", 50)
p animal_farm.read
puts

p goosebumps.read # still works even if add it after creating object
#ruby combines all class instance methods before using method.
#otherwise we would have diffrent levels ov objects- this is not the case

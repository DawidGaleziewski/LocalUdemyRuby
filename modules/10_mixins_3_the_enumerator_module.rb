#ruby-doc.org/core-2.3.3/enumerable.html
#we can use existing modules to inject in our class
class ConvenienceStore
  include Enumerable # we can inculde it as its already included in Ruby
  attr_reader :snacks

  def initialize
    @snacks = []
  end

  def add_snack(snack)
    snacks << snack
  end
  #Enumerable module won't work as we need to specify what it needs to do
  #we need to specify with what it will interact/iterate over
  #everytime we include this module we need to define what each is going to iterate over
  def each
    snacks.each do |snack|
      yield snack # this is going to yield variable to the module, whitout it the method won't know what to itaerate over
    end
  end
end

bodega = ConvenienceStore.new
bodega.add_snack("Doritos")
bodega.add_snack("Slim Jims")

# p bodega.snacks

# bodega.each {|snack| puts "#{snack} is delicious"} #this we can test each is working properly

#now we can use Enumerable module methods
p bodega.any?{|snack| snack.length > 3}
p bodega.all?{|snack| snack.length > 3}
p bodega.map {|snack| snack.upcase}
p bodega.select {|snack| snack.downcase.include?("j")}
p bodega.reject {|snack| snack.upcase.include?("J")}
p bodega.sort
p bodega.first
#quite powerful way of using existing modules

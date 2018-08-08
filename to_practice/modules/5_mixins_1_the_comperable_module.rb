#mixin - module added to the class
#example <, <=, == methods will be used on many classes
  #this is done in ruby by comperable module
#even that they do not have same master class
#we can use comperable module on our own classes!

class OlympicMedal
#we add module by include keyword
  include Comparable
  #we need to define those values
  MEDAL_VALUES = {"Gold" => 3, "Silver" => 2, "Bronze" => 1}

  #We need to define method to get those values
  attr_reader :type

  def initialize(type, weight)
    @type = type
    @weight = weight
  end

  #ruby does not know how to compare those objects, we need to be explicit
  def <=> (other) #we will feed the "type" instance variable to the method MEDAL_VALUES
    if MEDAL_VALUES[self.type] < MEDAL_VALUES[other.type]
      -1
    elsif MEDAL_VALUES[self.type] == MEDAL_VALUES[other.type]
      0
    else
      1
    end
  end

end

#way this works:
  #comarable module is included to the class
  #Constant is created, it stores every medals value
  #Reader method is added to class
  #initialized id the instance variable type
  #spaceshipp operator is re-designed
    #we compare a value injected during creating object (type) into instacne variable
    #with same instances variable on another object of the same class
    #that type is used as a hash key on Constant to fetch its number value
    #outcome of those operations is defined as with normal spaceship operator (-1, 0, 1)

bronze = OlympicMedal.new("Bronze", 5)
silver = OlympicMedal.new("Silver", 10)
gold = OlympicMedal.new("Gold", 3)

puts bronze < silver
puts gold > bronze
puts gold >= gold
puts gold == gold
puts silver != gold
puts silver.between?(bronze, gold)

MEDAL_VALUES1 = {"Gold" => 3, "Silver" => 2, "Bronze" => 1}
puts MEDAL_VALUES1["Gold"]

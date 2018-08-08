class Candidate
  attr_accessor :name, :age, :occupation, :hobby, :birthplace

  def initialize(name, details = {}) #we can give it a empty hash to not throw a error if user forgets to put information
    defaults = {age: 35, occupation: "Candidate"}
    defaults.merge!(details) #merge will only overwrite values that are supplied in details
    #this gives us extra security if info is not supplied

    @name = name
    @age = defaults[:age]
    @occupation = defaults[:occupation]
    @hobby = defaults[:hobby]
    @birthplace = defaults[:birthplace]
  end

end


info = {age: 53, occupation: "Banker", hobby: "Fishing", birthplace: "new york"}
senator = Candidate.new("Mr Smith", hobby: "horror movies")
p senator.age
p senator.hobby

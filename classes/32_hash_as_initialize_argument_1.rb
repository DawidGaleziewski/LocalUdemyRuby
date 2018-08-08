class Candidate
  attr_accessor :name, :age, :occupation, :hobby, :birthplace

  def initialize(name, details)
    @name = name
    @age = details[:age]
    @occupation = details[:occupation]
    @hobby = details[:hobby]
    @birthplace = details[:birthplace]
  end

end


# if we mix those example put hobby in place of name data will get mixed up
# we can avoid this by using hashes
#senator = Candidate.new("Mr Smith", 53, "Banker", "Fishing", "New York")

info = {age: 53, occupation: "Banker", hobby: "Fishing", birthplace: "new york"}# we ca swap those and it will still work!
#also this allows one component to be missing, in this case it will be replaced as nil
senator = Candidate.new("Mr Smith", info) #now info will be find automatically from the hash and the issue can be avoided
p senator.age

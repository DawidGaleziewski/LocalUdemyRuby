#exists only on one single instance of a object
class Player
  def play_game
    rand(1..100) > 50 ? "Winner" : "Loser!"
  end
end

bob = Player.new
boris = Player.new

p bob.play_game
p boris.play_game

#we can define this to be only available for one instance of the class
def boris.play_game #whatever is closest will be invoked
  "Winner!"
end

p boris.play_game
p bob.play_game

p boris.class.ancestors #this won't show on ancestors
p boris.singleton_methods #shows singleton methods on this object
puts
p boris.singleton_class
p bob.singleton_class
#those are beneficial in unit testing for isolating one object

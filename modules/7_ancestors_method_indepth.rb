
module Purchaseable
  def purchase(item)
    "#{item} has been purchased"
  end
end

class Bookstore
  include Purchaseable
  def purchase(item)
    "You bought a copy of #{item}"
  end
end

class Supermarket
  include Purchaseable # this won't be used now
  def purchase(item)
    "thank you for visiting supermarket and buying #{item}!" # this will overwrite the mixin above
  end
end

barnes_and_noble = Bookstore.new
p barnes_and_noble.purchase("Atlas Shrugged")

shoprite = Supermarket.new
p shoprite.purchase("Ice cream")

class CornerMart < Supermarket
  def purchase(item) # This now will use this method not supermarket
    "Yay! awesome"
  end
end

quickstop = CornerMart.new
p quickstop.purchase("Slim Jim")
puts

#ancestor method needs to be run on the class itself.
# it shows chain in which ruby will check for methods:
#[Bookstore, Purchaseable, Object, Kernel, BasicObject]
 #1st bookstore- the class. Instance methods that are used in creation of the class will be used first
 #2nd Purchasable module/mixin inside the class

#This has chain of:
 #[CornerMart, Supermarket, Purchaseable, Object, Kernel, BasicObject]
p CornerMart.ancestors
quickstop = CornerMart.new
p quickstop.purchase("Slim Jim") #this will use method from Supermarket, as it is closer than mixin

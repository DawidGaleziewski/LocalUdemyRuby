#similar to include
#it places the module BEFORE the instance method in the class
module Purchaseable
  def purchase(item)
    "#{item} has been purchased"
  end
end

class Supermarket
  include Purchaseable # this won't be used now
  def purchase(item)
    "thank you for visiting supermarket and buying #{item}!" # this will overwrite the mixin above
  end
end

class Minimart
  prepend Purchaseable # this won't be used now
  def purchase(item)
    "thank you for visiting supermarket and buying #{item}!" # this will overwrite the mixin above
  end
end


#[Supermarket, Purchaseable, Object, Kernel, BasicObject]
p Supermarket.ancestors
#[Purchaseable, Minimart, Object, Kernel, BasicObject]
p Minimart.ancestors

fruit_prices = {banana: 1.5} #literal syntax
#normal state is thath we get nil as default value
#(thath is if element was not found)
p fruit_prices[:orange]

#hash is a class, or a blueprint used
#new method, thath takes argument, this is default value
fruit_prices_with_default = Hash.new("Not Found")
fruit_prices_with_default[:banana] = 1.05
fruit_prices_with_default[:orange] = 0.69
fruit_prices_with_default[:kiwi] = 10.99

p fruit_prices_with_default[:banana]
p fruit_prices_with_default[:steak] # now gives 0 which is custome value
p fruit_prices_with_default[:dog]


#another way of assigning default values
#wierd syntax as it uses = nad not ()
fruit_prices_with_default.default = "WHoops" #this very often is used with 0

p fruit_prices_with_default[:steak] # now gives 0 which is custome value
p fruit_prices_with_default[:dog]

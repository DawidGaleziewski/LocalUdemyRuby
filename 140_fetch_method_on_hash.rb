menu = {burger: 3.99, taco: 5, chips: 0.5}
p menu[:burger]
puts

p menu[:burger]
p menu[:chips]
p menu[:salad] #gives nil
#same as
p menu.fetch(:salad, nil)
puts

p menu.fetch(:burger)
#p menu.fetch(:salad) #throws error!
p menu.fetch(:salad, "not found") # if we give it second argument it will give it back
#we can customize it.
# if it founds it it wont returns second value
p menu.fetch(:chips, "never display")

#modify
menu = {burger: 3.99, taco: 5.96, chips:0.50}
p menu[:burger]
menu[:salad] = 8.99 # this is how we can add a value
p menu
menu[:taco] = 2.99 #we can change existing values as well
p menu

#another method to do this
menu.store(:sushi, 24.99)#key and value
p menu

p menu.store(:steak, 34.99)
p menu
p menu [:steak]

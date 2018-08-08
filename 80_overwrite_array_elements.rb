fruits= ["apple", "orange", "Grape", "Banana"]
fruits[1]= "Watermelon" # change  on this possition
puts fruits[1]

fruits[4] = "raspberry" # adding new value
p fruits

fruits[10]= "Kiwi" # gaps will be populated with nill
p fruits

fruits[3,2] = ["Canteloupe","Dragonfruit"] #replacing array of items
p fruits
 fruits[0..100]= ["blackberry", "Oranger"] #empty spaces getting removed

 p fruits

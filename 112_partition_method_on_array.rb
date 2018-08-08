#calls select and reject to give you two arrays
foods= ["steak", "tofu", "Vegetables" , "steak burger", "kale", "dog", "snake", "tuna steaks"]

good = foods.select {|food| food.include?("steak")}
bad = foods.reject {|food| food.include?("steak")}
p good
p bad


#works the same but gives nest array of two arrays
#first is including the requirment second is not
#than we can unpack this array in two arrays
good_1, bad_2 = foods.partition {|food| food.include?("steak")}
p good_1
p bad_2


array= [1, 2, 3, 5, 10, 15, 1551]
def evens_and_odds(numbers)
  evens, odds = numbers.partition {|number| number.odd?}
  p evens, odds
end

evens_and_odds(array)

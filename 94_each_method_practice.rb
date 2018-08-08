fives= [5, 10, 15, 20, 25, 30, 35, 40]
odds=[] #add to this  array, if it was in block it will disappear
fives.each do |number|
  if number.odd?
  odds << number
  end
end

p odds

#challange odds to odd array, even numbers to even array

fives_1=[5,10,15,20,25,30,35,40]
evens_1=[]
odds_1=[]

fives_1.each do |five|
  if five.odd?
    odds_1 << five
  elsif five.even?
    evens_1 << five
  end
end

puts
p evens_1, odds_1

#refactor code
fives_2=[5, 10, 15, 20, 25, 30, 35, 40]
def print_evens_and_odds(array)
  evens_2=[]
  odds_2=[]

  array.each {|number| number.even? ? evens_2 << number : odds_2 << number}

  p evens_2, odds_2
end

puts "function"
print_evens_and_odds(fives_2)
print_evens_and_odds([1, 89, 17 ,34534, 324, 64])

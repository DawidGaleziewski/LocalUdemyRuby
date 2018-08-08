stock_prices= [721.32, 1341.141, 123411,134134,53,34523]
p stock_prices.max #largest value
p stock_prices.min  #smallest value

fruits= ["apple", "kiwi", "banana", "watermelon"]
p fruits.max
p fruits.min

#challange
#return minimum and max value for those arrays
array_numbers= [1,2,52, 1, -13, -134515, 1000, 100000,1200]

def custom_max(arr)
  arr.sort.reverse[0]
  #in solution they used [-1] to get to the last number
end

def custom_min(arr)
  arr.sort[0]
end

puts
p custom_max(array_numbers)
p custom_min(array_numbers)

#doing this the stupid more complex imho way by iliteration
def custom_max_loop(arr)
  return nil if arr.empty?
  max = arr[0]
  arr.each do |value|
    max = value if value > max
  end
  max
end

p custom_max_loop(array_numbers)

def custom_min_loop(array)
  min_value= 0
  array.each do |number|
    if min_value > number
      min_value = number
    end
  end
  min_value
end

p custom_min_loop(array_numbers)

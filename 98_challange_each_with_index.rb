#[1, 2, 3, 4, 5]
#Wrtie a loop that will give me a sum of
#the products of each index and its values
# element * index and sum up those in total

array= [1, 2, 3, 4, 5]
sum=[]
array.each_with_index do |number, index|
 sum =+ number * index
 puts sum
end

puts sum

puts


#solution
sum1 = 0
[1, 2, 3, 4, 5].each_with_index do |number, index|
  result = number * index
  sum1 =+ result
end
p sum1


#2nd problem
#[]
#Loop that prints product of the elemtn and its index pos.
#if the index position is greater than the element
# create this within method

arr= [-1, 2, 1, 2, 5, 7, 3]

def print_if(array)
 array.each_with_index do |number, index|
    result= number + index
    p "for #{number}"
      if result < index
        puts "#{index} is greater than #{result}"
     end
    end
end

print_if(arr)

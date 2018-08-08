#what can go wrong
#calculate total price
def calculate_total_1(price, tip, tax)
  tax_ammount = price * tax
  tip_ammount = price * tip
  price + tip_ammount + tax_ammount
end

puts calculate_total_1(24.1, 0.18, 0.07)

#if I forget order in which I have to pass
puts calculate_total_1(0.18, 24.1, 0.07)
#we can prevent this by using hash


def calculate_total_2(info) # this will be the hash
  tax_amount = info[:price] * info[:tax]
  tip_amount = info[:price] * info[:tip]
  info[:price] + tax_amount + tip_amount
end

bill = {price:24.99, tip:0.18, tax:0.07}
p calculate_total_2(bill)

bill_2 = { tip:0.18, tax:0.07, price:24.99}
p calculate_total_2(bill_2) # same value as it does not matter in which order we feed the data


#used in profesional ruby code
p calculate_total_2({tip:0.18, tax:0.07, price:24.99})
p calculate_total_2( tip:0.18, tax:0.07, price:24.99) #when hash is the last argument, you dont have to used
#curly braces
p calculate_total_2 tip:0.18, tax:0.07, price:24.99

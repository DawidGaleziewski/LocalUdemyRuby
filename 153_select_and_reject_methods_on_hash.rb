#key value or both to be removed
#extract values from hash

#extrac values that meet the condition
recepie = {sugar:5, flour:10, salt:5, pepper:4}
high = recepie.select {|key, value| value >= 5} #we need to specifiy two values
p high

#opposite- if this condition is meet, reject this value
low = recepie.reject {|key, value| value >= 5 }
p low

#all bool returning methods can be used
odds = recepie.select {|key, value| value.odd?}
p odds

include_s = recepie.select {|key, value| key.to_s.include?("s")}
p include_s

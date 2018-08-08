#same functionality as on array
capitals = {alabama: "Montgomery", alaska: "Juneau",
            arizona: "Phoenix", arkansas:"Little Rock"}

#ther is also .each_pair method and its identical!
capitals.each do |state, capital|#represent key and value
  puts "Querying hash..."
  puts "The capital of #{state} is #{capital}"
end

#when giving one value
capitals.each do |guess|
  p guess #ruby returns whole array
end

#challange, change above so it will only return the value
capitals.each do |guess|
  puts guess[1] # we can pull 0 or 1 index for keys and values
end

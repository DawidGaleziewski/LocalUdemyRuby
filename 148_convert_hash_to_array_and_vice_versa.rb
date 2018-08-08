spice_girls = {scary: "Melanie Brown",
              sporty: "Melanie Chisholm",
              baby: "Emma Buntion",
              ginger: "Geri Halliwell",
              posh: "Victoria Beckham"}
p spice_girls.to_a #turns into array, as it needs to preserve relations
#it will convert key-value pair into nested array

p spice_girls.to_a.flatten #if you want to remove nested

# from array to Hash
# we need multidementional array
power_rangers = [
  [:red, "Jason"], [:black, "Zack"],
  [:blue, "Billy"], [:yellow, "Trinity"],
  [:pink, "Kimberly"]
]

puts power_rangers.to_h #converts to hash

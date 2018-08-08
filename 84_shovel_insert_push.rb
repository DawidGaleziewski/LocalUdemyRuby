#push method
locations = ["House", "Airport", "Bar"]

locations.push("WC") # what to add on the end
p locations
locations.push("restaurant","saloon")
p locations

#shovel operator
locations << "Livingroom" << "second saloon"
p locations
locations.insert(1, "restaurant no 32", "saloon 23") #starting index possition, value

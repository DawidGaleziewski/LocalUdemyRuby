names = ["Tom", "Cameron", "Bob"]
p names[5]
p names.fetch(2) #Fetch does not take nil! It wil trigger error
p names.fetch(100, "Error! it was not found") #second argument specyfies what will be returned in case it is nil

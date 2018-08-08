#removes nested arrays, puts their value in sequence, and gives back one dimensional arrays
registrations_array = [
  ["Bob", "Dan", "Jack", [1,2,3, [4,5,6]]],
  ["Rick", "Susan", "Molly"],
  ["Pierce", "Sean", "Gorge"]
]

#when we want to unpack array to seperate variables
a, b, c= registrations_array
p a
p b
p c

#when we just want to just get one array
p registrations_array.flatten #it is recursive - you can have multiple values
registrations_array.flatten! #can be used with bang!
puts
p registrations_array

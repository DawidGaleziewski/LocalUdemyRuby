sales = "I bought 9 apples, 25 bananas, and 4 oragnes at the store."
#how to get consonants by excluding other
#exclude a i o u
puts sales.scan(/[^aeiouAEIOU,\s\d\.]/)  #^ is exclude
#, is just coma
puts
puts sales.scan(/[^\d]/) #it has to be embeded in []

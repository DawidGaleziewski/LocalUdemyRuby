#method that takes block
p [1, 3, 5, 7, 2, 67].any? do |number| #anything here will have to return bool value
  number.even? #if any of those returns true, the whole process will be true
end

p [1, 3, 5, 7, 9].any? {|n| n.even?} #none of those is even


#all
p [1, 3, 5, 7].all? {|n| n.odd?} #all of those have to match block condition

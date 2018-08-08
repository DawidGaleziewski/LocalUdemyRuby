#convert chars to ints:
p ["1", "2", "3"].map {|number| number.to_i}

#easier way to do this
 #we want to change every element to_i.
 #however we cannot do this by passing to_i as its not object
 #however by changing it to symbol :to_i it becomes object
 #also we need to change it to proc so add & in front of :to_i
p ["1", "2", "3"].map(&:to_i)
#same to_s methods
p [10, 14, 25].map(&:to_s)
#symbols are ideal when we want to specyfi the name

p [1, 2, 3, 4, 5].select {|number| number.even?}
#passing another method
p [1, 2, 3, 4, 5].select(&:even?)
puts
p [1, 2, 3, 4, 5].select {|number| number.odd?}
p [1, 2, 3, 4, 5].reject(&:odd?)

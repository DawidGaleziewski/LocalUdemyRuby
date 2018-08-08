p "Hello".reverse
p [1, 2, 3].reverse
p ["A","B","C"].reverse

#reverse on bang method

queue= [4, 6, 8, 9, 10]
queue.reverse
p queue #not changed

#using bang method
queue.reverse!
p queue

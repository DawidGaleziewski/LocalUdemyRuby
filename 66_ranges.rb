nums = 1..5 # includes final value
p nums.class #range class object

nums1 = 1...5 #excludes final value
p nums1

p nums.first
p nums1.last # this still shows excluded numbers

p nums.first(4) # shows first x of array objcet
p nums.last(1)

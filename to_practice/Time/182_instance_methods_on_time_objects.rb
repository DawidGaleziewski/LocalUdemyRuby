today = Time.now
p today
puts

#methods on time
p today.month
p today.day
p today.year

puts

p today.hour
p today.min
p today.sec

puts
# number of days into the year
p today.yday

sometime = Time.new(2016, 5, 14)
p sometime.yday

#day of the week
#starts at 0 and 0 is sunday
p sometime.wday

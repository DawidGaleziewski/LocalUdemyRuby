someday = Time.new(2000, 2, 15)
#convertion to numbers of days into, year, month, week
p someday.yday
p someday.mday
p someday.wday
puts

#convertion to string
puts someday.to_s
puts someday.ctime #To string- but more human readable format

#To array
p someday.to_a #seconds, minutes, hours, day month year, day of week, day of the year, bool for dailight saving time, time zone

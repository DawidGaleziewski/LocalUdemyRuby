#bool methods
birthday = Time.new(1980, 5, 24)
p birthday
p birthday.monday? # return true or false if the day matches
p birthday.tuesday?
p birthday.wednesday?
p birthday.thursday?
p birthday.saturday?
p birthday.sunday?
puts
p birthday.dst?#daylight savings time

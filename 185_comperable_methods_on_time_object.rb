#time object same as int fix num etc has "comperable module"
birthday = Time.new(2016, 4, 12)
summer = Time.new(2016, 6, 21)
indepenece_day = Time.new(2016, 7, 4)
winter = Time.new(2016, 12, 21)

puts birthday < summer
puts indepenece_day > winter
puts birthday <= Time.new(2016, 4, 12)
puts birthday == Time.new(2016, 4, 12)
puts indepenece_day != winter

puts Time.new(2016, 4, 12) == Time.new(2016, 4, 12, 1)
puts

#between? method
puts indepenece_day.between?(birthday, winter)
puts birthday.between?(Time.new(2016, 1, 1 ), winter)

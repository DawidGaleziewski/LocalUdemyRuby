start_of_year= Time.new(2018, 1, 1)
p start_of_year
#example changing by one mont
p start_of_year - (60 * 60 * 24 * 40) #we add/subtract by seconds

#challange- what date represent that day of the year
puts
def find_day_of_the_year(number)
  current_day = Time.new(2016, 1, 1)
  one_day = (60 * 60 * 24)
  #use # .yday method for this
  until current_day.yday == number do
    if current_day.yday != number
      current_day += one_day
    end
  end
  puts
  p current_day
end
#example impu 150

#day = Time.new(2016, 10, 7).yday  281
p find_day_of_the_year(281)

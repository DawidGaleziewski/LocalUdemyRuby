#shorter for if statment


#example
#  def rate_my_food(food)
#    if food ==
#    elsif food ==
#    elsif food ==
# end
#

def rate_my_food(food)
  case food
  when "Steak" #if food is eq to Steak
    "Pass the sauce!"
  when "Sushi"
    "Great choice!"
  when "Tacos", "Burritos", "Strawhat"
    "That all is great"
  when "Tofu", "Brussels"
    "Yuck!"
  else
    "I dont know about this"
  end

end

puts rate_my_food("Tacos")

def calculate_school_grade(grade)
  case grade
  when 90..100 #.. this is in a range of points
    "A"
  when 90..89 then "B" #then is used if they are in the same line
  when 60..69
    "C"
  else
    "F"
  end
end

p calculate_school_grade(90)

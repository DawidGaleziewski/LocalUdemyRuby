grade = "C"

if grade == "A"
 puts "that is excelent"
elsif grade == "B"
  puts "good grade"
else
  puts "you fuckin' suck"
end

def odd_or_even(number)
  if number.odd?
    puts "that number is odd"
  else
    puts "Number is even"
  end
end

odd_or_even(2)

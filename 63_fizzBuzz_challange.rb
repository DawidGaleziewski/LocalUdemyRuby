#deceptive complex problem
def fizzbuzz(number)
#pass from 1 to number passed to fizzbuzz
# if the number is is divisible by 3, output #fizz
#if its divisible by 5 output buzz
#if the number is divisable both by 3 and 5 output Fizbuzz
 #should not produce duplicates like fizz buzz and fizzbuzz
 i = 1
  until i > number
    if i % 3 == 0 && i%5 == 0
        command = "fizzbuzz"
      elsif i%3==0 && i%5!=0
        command = "fizz"
      elsif i%3!=0 && i%5==0
        command ="buzz"
      else
        command = ""
    end
      if command != ""
      puts "#{i} #{command}"
      end
    i += 1
  end
end

fizzbuzz(30)

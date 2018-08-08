#next moves to next Iteration

numbers = [1, 2, 3, "Hello", 5, 6, nil, 7, 8, [1,2,3]]

numbers.each do |num|
  unless num.is_a?(Fixnum)
    next
  else
    puts "#{num} square is #{num ** 2}"
  end


end

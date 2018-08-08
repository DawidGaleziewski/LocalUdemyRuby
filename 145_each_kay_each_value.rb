salaries = {director: 100000, producer: 200000, ceo: 300000, assistant: 300000}
#each kay and each value

salaries.each_key do |key|
  puts "EMPLOYEE RECORD"
  puts "#{key}"
end

salaries.each_value {|value| puts "He earns #{value}"}

#challange
# two methods, accepting hash, returning array of each kay, or array of each value

def split_key(hash)
  keys=[]
  hash.each do |array_item|
    keys << array_item[0]
  end
  keys
end

p split_key(salaries)

def split_value(hash)
  values=[]
  hash.each do |array_item|
    values << array_item[1]
  end
  values.uniq  #to exclude dups
end

p split_value(salaries)

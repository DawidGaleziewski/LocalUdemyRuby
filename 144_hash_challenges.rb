hash = {a: 5, b: 2, c: 3, d: 5}

def value_count(hash, item)
  result = 0
  hash.each do |key, value|
    if value == item
      result += 1
    end
  end
  result
end

p value_count(hash, 2)

market ={garlic: "3 clovers",tomatoes: "5 batches", milk:"2 gallons"}
kitchen={bread:"2 loves", yogurt:"20 cans", milk: "100 gallons"}
p market.merge(kitchen)
p kitchen.merge(market) #it merges values, if there are dups it leaves the one from
#main hash that we call method on. Not from the argument
#we can modify permanently by bang! methods
p kitchen.merge!(market)
p kitchen

#custom_merge(hash1, hash2)
#use dup method! to not mutate orginal object
#it was hard but I did it, still ugly as fuck:
lidl = {mleko:"20 palet", chipsy:"200 paczek", parowki: "400 palet", piwo:"200 000 palet"}
biedronka = { chipsy:"12 paczek", parowki: "10 palet", piwo:"600 000 palet", kraby: "200 sz"}
puts
puts
def custom_merge(hash1, hash2)
  result = []
  arr1 = hash1.to_a
  arr2 = hash2.to_a
  p arr1
  p arr2
  result += arr1
  hash2.dup.each do |value|
    unless result.include?(value[0])
      p value
      result += [value]
    end
  end
  result.to_h
end

p custom_merge(lidl, biedronka)

#resolution
def  custom_merge_refine(hash1, hash2)
  new_hash = hash1.dup #duplicate hash for safty
  hash2.each do |key, value|
    new_hash[key] = value #it will add new key value pair
    #but only if the key does not exists, otherwise its gonna overrite the value
  end
end

def custom_merge_refine_2(hash1, hash2)
  new_hash = hash1.dup
  hash2.each {|key, value| new_hash[key] = value}
  new_hash
end

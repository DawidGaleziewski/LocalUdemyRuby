#compact removes all nil values from array
#nil is its own class
puts [1, nil, 2, nil, 3, false, "string", [1,2,3] ].compact

#can be used with bang
sports= ["football", nil].compact!
p sports
puts

array_nils= [nil, true, false, 1,2,3, "test", nil]
#custom compact method
def custom_compact(array)
  new_array=[]
  array.each do |item|
      unless item == nil
        new_array << item
      end
    end
  return new_array
end

p custom_compact(array_nils)

#Other ways to do this
def custom_compact_1(array)
  final=[]
  array.each {|element| final << element unless element.nil?}
  final
end

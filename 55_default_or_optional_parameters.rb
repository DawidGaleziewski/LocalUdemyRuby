#user does not have to provide the value but they can
def make_phone_call(number,international_code = 1, area_code= 646)
  #user has to input number, rest he can but if not they wil be assumed by default
  #those have to be put at the international_code
  puts "Calling #{international_code}-#{area_code}-#{number}"
end
make_phone_call(123456, 5, 999)
make_phone_call(123455) # here it will use default values
make_phone_call(123124, 213)

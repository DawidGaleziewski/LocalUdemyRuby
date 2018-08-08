##allow us to use some methods publicly, while keeping values or methods they use hidden

#protected - Between public and private methods
##methods on object types:
  #public methods- allow interacting with an object
    #public methods can be called by any other object
  #Private methods - can be called only within the object
    #internal tools
    #cannot be called upon by any other object
    #Private methods cannot be called with an explcit reciver - only the current object is able to receive the method
    #Cannot tell one object to access another objects method
    #they are hidden

  ###Protected method - can be invoked only by objects of the same class
    #Protected methods can be only called within the same family of objects
    #if two object come  frome same class, they can call each other protected methods
    #no other object from other class can access this method
class Car
  def initialize(age, miles)
    base_value = 2000
    age_deduction = age * 1000
    miles_deduction = (miles / 10.to_f)
    #we do not want for user to get this value.
    @value = base_value - age_deduction - miles_deduction
  end

    #however we want to allow user to compare the car with somebody else


  def compare_car_with(car)
    self.value  > car.value ? "Your car is better" : "Your car is worse"
  end

#this would work if we added attr_reader :value on thop, but we do not want to do this
#therefore we can create a mehod to access the value under protected keyword
  protected #if this was protected we couldnt access it from another object/method
  #method above would not work
  def value
    @value
  end
end

civic = Car.new(3, 3000)
# p civic.value #works same as private
fiat = Car.new(10, 999999)
p civic.compare_car_with(fiat) #thanks to protected we can run this on diffrent object

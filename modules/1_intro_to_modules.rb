#Module is like a toolbox of methods and constants
#module methods can be used whenever you need them
#modules create namespaces for methods with the same name
#when you define a method inside a module it is enclosed inside it
  #two modules can contain multiple methods with the same name
#modules cannot create instances, that is why they should not be confused with classes
#it is toolkit not a blueprint

#syntax
#module names are written like classes with UpperCamelCase
#constants in modules should be written in ALL CAPS
#module methos can be accessed with the dot operator
#access module constants with "scope resolution operator" ::
#:: points to which enviroment we will be searching for

#we define module with module keyword
module LengthConversions
  WEBSITE= "https://poczta.onet.pl/index.html#/Odebrane"

  def self.miles_to_feet(miles) #this allows module to be reciver
    #we will be able to do LengthConversions.mile_to_feet
    #we could also write LengthConversions.mile_to_feet (less preferred)
    miles * 5280
  end

  def self.miles_to_inches(miles)
    #you can call method above here
    feet = miles_to_feet(miles)
    feet * 12
  end

  def self.miles_to_cm(miles)
    inches = miles_to_inches
    inches * 2.54
  end
end

#reference constants
puts LengthConversions::WEBSITE
puts LengthConversions.miles_to_feet(100)
puts LengthConversions.miles_to_inches(200)

first_name = "Harry"
last_name = "Potter"
p first_name + last_name
p first_name + " " + last_name

first_name = first_name + last_name
first_name += last_name
p first_name

p first_name.concat(last_name)
first_name = first_name.concat(last_name)
p first_name

#<< can be used same as +
p first_name << last_name << "Wizard"

#it will overrite (bang method?)
first_name.concat(last_name)
p first_name

#adding in front of string
first_name.prepend(last_name)
p first_name

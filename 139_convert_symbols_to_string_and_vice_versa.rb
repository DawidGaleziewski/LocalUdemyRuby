#symbol to string
p :age.class
p :age.to_s.class

#string to symbol
p "age".to_sym.class

p "School bus".to_sym #symbols with spaces will be put in quotes
#this should be avoided in prof code
#best practice:
p "school_bus".to_sym

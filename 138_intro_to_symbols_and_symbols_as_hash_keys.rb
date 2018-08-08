#symbol starts with :
p :name
p :name.class
p :name.methods #array of methods that can be ussed
#it is NOT a string
#it is light version of string
#Hovever it has only a few methods

p :name.methods.length
p "name".methods.length #100 more methods

person= {:name => "Dawid",
         :age =>25,
         :handsome => true,
         :languages => ["Ruby", "Powershell", "HTML"]}
p person[:name]
p person[:handsome]
p person[:age]

#using symbols as hash keys is very popular
#there is short syntax
#hashkey : value
person={name: "Boris",
        age: 25,
        languages: ["Ruby", "JS"]}
p person[:name] #you stil imput it the same

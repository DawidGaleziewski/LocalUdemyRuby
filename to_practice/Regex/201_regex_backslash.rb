paragraph = "This is my   essay. Ideserve an A. I rank it 5 out of 5."
#puts paragraph.scan(/./) #this wont take dots,  it will take all characters
puts paragraph.scan(/\./) #backslash is a litral dot
puts
puts paragraph.scan(/\d/) #digits
puts paragraph.scan(/\d+/) #digits in a row
puts paragraph.scan(/\D/)#capital D is any NON digit
puts
puts paragraph.scan(/\s/) #any white space character
puts paragraph.scan(/\s+/) #same as d+, spaces in a row
puts paragraph.scan(/\S/) #any NON white space

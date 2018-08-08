class Gadget
end

shiny = Gadget.new
flashy = Gadget.new

puts shiny
puts shiny.object_id

puts flashy
puts flashy.object_id

puts
puts flashy.object_id == shiny.object_id
puts

#this will point glossy to the same place in memory that shiny
glossy = shiny # we do NOT create new object this way, we create a alias
p glossy.object_id
p shiny.object_id
p glossy.object_id == shiny.object_id
p glossy == shiny

story = "Once upon a time in a land far, far away"
p story[5, 4] # this is method!, it will start at character index 5 and extract 4 next characters
p story.slice(5, 4) # this is same

p story[0, 5]
p story.length
p story[0, story.length]
p story.slice(0, story.length)
puts
p story[-7, 5]
p story.slice(-7, 5)

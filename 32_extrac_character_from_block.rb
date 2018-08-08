# strings are mutab;e - subject to change
story = "Once upon a time in a land far, far away"
p story.length
# this starts at 0, but every character has it possition, called index possition
#string is a collection  on characters
p story[2]

#negative numbers start from another side of array
# however this counts in human numbers
p story[-2]

#this produces nil
p story[10000]

#slice methods
p story.slice(3)
# same as
p story[3]

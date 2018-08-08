#range object
story = "Once upon a time in a land far, far away..."
p story[27..29] #from character x to character y
p story.slice(27..29)

# .. is inclusive
# ... is not
p story[27...29]
p story.slice(27...29)
puts
p story[32..100]
p story.slice(32..10000)

p story[27..-9]

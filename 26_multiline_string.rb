#syntax is << + any identifier like <<MLS tak marks beggining of multiline string
words = <<MLS
  Everything here like line breaks
  will be taken literaly.
Tabs are also preserve!
MLS

puts words

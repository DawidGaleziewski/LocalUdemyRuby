voicemail = "I can be reached at 555-123-4567 or Regexman@gmail.com"
p voicemail.scan(/\d/) #\d any single digit - will give single digits in array
p voicemail.scan(/\d+/) #any occurance of one and more with what preceeds it
#chunhs of digits in array. Digits in a row.
puts
voicemail.scan(/\d+/){|digit_match| puts digit_match.length}# will accept block as well

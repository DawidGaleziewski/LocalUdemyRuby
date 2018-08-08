#called on string, but takes regex argument
#finds all occurances
voicemail = "I can be reached at 555-123-4567 or Regexman@gmail.com"
p voicemail.scan(/e/) #returns array of characters that match
p voicemail.scan(/re/)

#[] syntax for finding eaither r or e
p voicemail.scan(/[re]/) # it will find eaither r or e
p voicemail.scan(/[RrIi]/) #capital letters matter

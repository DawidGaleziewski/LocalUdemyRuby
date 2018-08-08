#ruby strftime - string from time
#allows you to custom the string from time
#https://apidock.com/ruby/DateTime/strftime
#%Y - year with century
today = Time.now
p today
p today.to_s

p today.strftime("%B %d, %Y")
p today.strftime("%B %d")
p today.strftime("%d------%B-------%j") # it can be customized, adding symbold in the middle etc
# %b abr month name ("Jan")
# %B full month name ("January")
# %d day of the month (1..31)
# %j day of the year (1..366) "Julian day"
# %m Month as a number (1..12)
# %wday of the week as a number (0..6)
# %x preferred representation for date (no time)
# %y two digit year (no century)
# %Y four-digit year

#examples of using monkey patching to make life easier
#example 1
#check hash for dups
class Hash
  def identify_duplicate_values
    values = []
    dupes = []
    self.each_value do |value|
      values.include?(value) ? dupes << value : values << value
    end
    dupes.uniq
  end
end

scores = {a: 100, b: 100, d: 50, e: 12, f: 6, g:6}
p scores.identify_duplicate_values

#example 2
#add minutes, days, hours to time
class Fixnum
  def seconds
    self
  end

  def minutes
    self * 60
  end

  def hours
    self * 60 * 60
  end

  def days
    self * 60 * 60 * 24
  end
end

puts Time.now + 45.days
puts Time.now + 4.hours
puts Time.now + 30.minutes

#example 3 more complex- yielding to a block
class Fixnum
  def custome_times
    i = 0
    while i < self
      yield(i + 1)
      i += 1
    end
  end
end

5.times {|i| puts i}
puts
5.custome_times{|i| puts i}

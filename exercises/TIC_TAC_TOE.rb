
class Box

  attr_accessor :cell1, :cell2, :cell3, :cell4, :cell5, :cell6, :cell7, :cell8, :cell9
  def initialize
    @LINE = "  -------------"
    @cell1, @cell2, @cell3, @cell4, @cell5, @cell6, @cell7, @cell8, @cell9 = [" "] * 9
  end

  def box
    [ "    A   B   C",@LINE, "1 | #{@cell1} | #{@cell2} | #{@cell3} |", @LINE,
       "2 | #{@cell4} | #{@cell5} | #{@cell6} |", @LINE,
      "3 | #{@cell7} | #{@cell8} | #{@cell9} |", @LINE]
  end

  def mark

  end

end


def win_condition(box, symbol)
  if box.cell1 && box.cell2 && box.cell3 == symbol
    puts "you won"
  elsif box.cell4 && box.cell5 && box.cell6 == symbol
    puts "you won"
  elsif box.cell7 && box.cell8 && box.cell9 == symbol
    puts "you won"

  elsif box.cell1 && box.cell5 && box.cell9 == symbol
    puts "you won"
  elsif box.cell3 && box.cell5 && box.cell7 == symbol
    puts "you won"

  elsif box.cell1 && box.cell4 && box.cell7 == symbol
    puts "you won"
  elsif box.cell2 && box.cell5 && box.cell8 == symbol
    puts "you won"
  elsif box.cell3 && box.cell6 && box.cell9 == symbol
    puts "you won"
  else
    puts "Game is on!"
    flag = 0

  end
end

box = Box.new()


def controlls(cell, mark, box)
  box.cell1 = mark if cell == "A1"
  box.cell2 = mark if cell == "B1"
  box.cell3 = mark if cell == "C1"
  box.cell4 = mark if cell == "A2"
  box.cell5 = mark if cell == "B2"
  box.cell6 = mark if cell == "C2"
  box.cell7 = mark if cell == "A3"
  box.cell8 = mark if cell == "B3"
  box.cell9 = mark if cell == "C3"
end

flag = 0
while flag == 0
  flag = 0

  puts "X mark your target"
  x= gets.chomp
  controlls( x , "X", box)
  puts box.box
  win_condition(box, "X")

  puts "O mark your target"
  o= gets.chomp
  controlls( o , "O", box)
  puts box.box
  win_condition(box, "O")

end

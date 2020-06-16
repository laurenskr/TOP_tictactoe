class Board
  attr_accessor :board_marks
  def initialize
    @board_marks = {
      row_one: [" "," "," "],
      row_two: [" "," "," "],
      row_three: [" "," "," "]
    }
  end

  def display_board
   @board_marks.each do |row, value|
    puts "#{value.join"|"}\n"
   end
  end
end

class Player
  def initialize(mark)
    @mark = mark
  end
  #make a move 
  #def make_move(row,column)
end


b = Board.new

puts b.display_board

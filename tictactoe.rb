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
  def mark_move(row,column,mark)
     #make a move
    case row
      when 1
        row = :row_one
      when 2
        row = :row_two
      when 3
        row = :row_three
      else
        puts "Incorrect move"
    end
    board_marks[row][column] = mark
  end
end


class Player < Board
  def initialize(mark)
    @mark = mark
  end
end


b = Board.new
player_x = Player.new("X")
player_o = Player.new("O")

b.mark_move(2,2,"X")
b.display_board

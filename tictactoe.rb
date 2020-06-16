class Board
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

b = Board.new

b.display_board

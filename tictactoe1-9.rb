class Game
end

class Board < Game
  attr_accessor :board
  def initialize
    @board = [1,2,3,4,5,6,7,8,9]
  end
end

class Player < Game
  def initialize(mark,game)
    @mark = mark
    @game = game
  end

  def make_move(spot)
    if @game.board[spot-1].is_a? Numeric
      @game.board[spot-1] = @mark
    else puts "Invalid pick!"
    end
  end
end

b = Board.new
player_x = Player.new("X",b)

player_x.make_move(3)
puts b.board

begin
  puts "Pick a spot on the board:"
  pick = Integer(gets.chomp)
  player_x.make_move(pick)
rescue
  puts "Please enter an integer"
  retry
end
puts b.board

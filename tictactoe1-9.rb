class Game
  attr_accessor :win
  def initialize
  end
end

class Board < Game
  attr_accessor :board, :show_board
  def initialize
    @board = [1,2,3,4,5,6,7,8,9]
  end
  def show_board
    p board[0..2].join(" ")
    p board[3..5].join(" ")
    p board[6..8].join(" ")
  end
end

class Player < Game
  attr_reader :made_moves
  def initialize(mark,game)
    @mark = mark
    @game = game
    @made_moves = []
  end

  def ask_move
    begin
      puts "Pick a spot on the board:"
      pick = Integer(gets.chomp)
      make_move(pick)
    rescue
      puts "Please enter an integer"
      retry
    end
  end

  def make_move(spot)
    if @game.board[spot-1].is_a? Numeric
      @made_moves.push(spot)
      @game.board[spot-1] = @mark
      check_win
    else puts "Invalid pick!"
      ask_move
    end
  end

  def check_win
    winning_combinations = [123,456,789,147,258,369,159,357]
    winning_combinations.each do |i|
      combi = i.to_s.split(//).map{|chr| chr.to_i}
      if (combi - @made_moves.sort).empty?
        $win = true
        break
      end
    end
  end
end
b = Board.new
player_x = Player.new("X",b)
player_y = Player.new("O",b)
$win = false
while $win == false
  while $win == false
    player_x.ask_move
    b.show_board
    break
  end
  while $win == false
    player_y.ask_move
    b.show_board
    break
  end
end
puts "YOU WON!"


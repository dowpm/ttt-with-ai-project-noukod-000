class Game
  attr_accessor :board, :player_1, :player_2

  WIN_COMBINATIONS = [
    [0,1,2],  # Top row
    [3,4,5],  # Middle row
    [6,7,8],  # Bottom row
    [2,4,6],  # Diagonal 1
    [0,4,8],  # diagonal 2
    [0,3,6],  # left
    [1,4,7],  # Middle
    [2,5,8]   # right
]

  def initialize player_1 = Players::Human.new("X"), player_2 = Players::Human.new("O"), board = Board.new

    @player_1, @player_2, @board = player_1, player_2, board

  end

  def current_player
    board.turn_count.even? ? player_1 : player_2
  end

  def won?
    return if board.cells.all? {|index| index == " "  }

    WIN_COMBINATIONS.detect do |win_combination|
      win_combination.all? {|cell| board.cells[cell] == "X"} or
      win_combination.all? {|cell| board.cells[cell] == "O"}
    end
  end

  def draw?
    board.full? and !won?
  end

  def over?
    draw? or won?
  end

  def winner
    board.cells[won?[0]] if won?
  end

  def turn
    input = current_player.move board
    if !board.valid_move? input
      turn
    else
      puts "\nTurn: #{@board.turn_count+1}\n"
      puts "Player \"#{current_player.token}\" move to position \"#{input}\""
      board.update input, current_player
      board.display
      puts "\n"
    end
  end

  def play
    until over?
      turn
    end

    if won?
      puts "Congratulations #{winner}!"
    else
      puts "Cat's Game!"
    end

  end

end

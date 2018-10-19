module Players
  class Computer < Player

    def move board
      rand(9-board.turn_count)
    end
  end

end

module Players
  class Computer < Player

    def move board
      rand(9-board.turn_count).to_s
    end
  end

end

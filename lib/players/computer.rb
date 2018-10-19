module Players
  class Computer < Player

    def initialize (token)
      super
      @m = (1..9).to_a
    end

    def move board
      m = rand(9-board.turn_count).to_i
      (1..9)
    end
  end

end

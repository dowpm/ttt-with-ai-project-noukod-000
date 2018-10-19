module Players
  class Human < Player

    def move board
      super
      gets.strip
    end

  end
end

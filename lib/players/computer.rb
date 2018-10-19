module Players
  class Computer < Player

    def initialize (token)
      super
      @m = []
    end

    def move board
      mo = rand(9).to_i
      if !m.include?(mo)
        @m << mo
        return mo
      else
        move board
      end
    end
  end

end

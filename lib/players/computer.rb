module Players
  # attr_accessor :m
  class Computer < Player

    # def initialize (token)
    #   super
    #   @m = []
    # end

    def move board
      mo = rand(9).to_i
      if @m.include?(mo)
        move board
      else
        @m << mo
        return mo
      end
    end
  end

end

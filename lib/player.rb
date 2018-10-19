class Player
  attr_reader :token, :m

  def initialize token
    @token, @m = token, []
  end

  def move board
    puts "Enter a position 1-9 (#{token}) :"
  end

end

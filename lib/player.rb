class Player
  attr_reader :token

  def initialize token
    @token = token
  end

  def move board
    puts "Enter a position 1-9 (#{token}) :"
  end

end

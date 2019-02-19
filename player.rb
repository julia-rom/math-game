class Player
  attr_reader :name
  attr_writer :lives

  def initialize name
    @name = name
    @lives = 3
  end

  def lose_life
    @lives -= 1
  end

  def player_score
    "#{@name}: #{@lives}/3"
  end

  def dead?
   @lives <= 0
  end
end
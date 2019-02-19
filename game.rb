require './player'
require './turn_manager'

# initializes player and prints game summaries
class Game
  attr_reader :players, :turn_manager
  def initialize
    # list of players
    @players = [
      Player.new('Player1'),
      Player.new('Player2')
    ]
  # The turn manager handles which round it is as well as
  # which player's turn it is
  @turn_manager = TurnManager.new(@players)
  end

  # checks if game is over (either player lives is at 0)
end

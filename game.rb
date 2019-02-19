require './player'
require './turn_manager'
require './turn'

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

  def play
    # while game is not over
    while !game_over?
      # get the next turn from the turn_manager
      @turn_manager.next_turn
      puts "P1: #{@players[0].player_score} vs P2: #{@players[1].player_score}"
    end

    # game is over, print summary
    end_game_summary
  end

  # checks if game is over (either player lives is at 0)
  def game_over?
    @players[0].dead? || @players[1].dead?
  end

  # prints end game summary
  def end_game_summary
    winner = nil
    if @players[0].dead?
      winner = @players[1]
    else
      winner = @players[0]
    end
    puts '----GAME OVER!----'
    puts "#{winner.name} Wins!"
    puts 'Bye!'
  end
end

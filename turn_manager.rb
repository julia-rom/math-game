require './turn'

class TurnManager
    attr_reader :players, :round_number
    attr_accessor :current_index
    attr_writer :round_number

  def initialize players
    @players = players.dup
    @round_number = 0
    @current_index = 0
    @current_player = @players[@current_index]
  end

  def next_turn
    self.increment_turn
    Turn.new(@current_player, @round_number)
  end

  def increment_turn
    @round_number += 1
    @current_index = (@current_index + 1) % @players.count
  end
end

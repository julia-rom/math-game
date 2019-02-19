require './turn_manager'

class Turn
  attr_reader :round, :first_number, :second_number, :answer
  attr_accessor :current_player

  def initialize player, round
    @current_player = player
    @round_number = round
    @first_number = Random.rand(1..20)
    @second_number = Random.rand(1..20)
    @answer = @first_number + @second_number
    self.ask_question
    self.get_answer
  end

  #ask question at beginning of turn
  def ask_question
    puts '---- NEW TURN -----'
    puts "#{@current_player.name}: what does #{@first_number} plus #{@second_number} equal?"
    
  end

  # gets answer & check if correct. Player loses life if wrong
  def get_answer
    @player_answer = STDIN.gets.chomp.to_i
    if @player_answer == @answer
        puts "#{@current_player}: Yes! You got it!"
    else
        puts "#{@current_player.name}: Wrongo"
        @current_player.lose_life
    end
  end
end
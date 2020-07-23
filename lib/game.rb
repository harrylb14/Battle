require_relative 'player'
class Game
  attr_accessor :player1, :player2, :current_turn

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @current_turn = player1
  end
  
  def switch_turns
    @current_turn = opposite_player
  end

  def opposite_player(player = @current_turn)
    player == player1 ? player2 : player1
  end

  def game_over?
    !!losing_player
  end

  def loser 
    losing_player
  end

private

  def losing_player
    players = [@player1, @player2]
    players.select{|player| player.hp == 0}.first
  end

  def self.create(player1, player2)
    @game = Game.new(player1, player2)
  end
  
  def self.instance
    @game
  end
end
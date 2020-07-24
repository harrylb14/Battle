require_relative 'player'
class Game
  attr_reader :player1, :player2, :current_turn, :single_player

  def initialize(player1, player2, single_player=false)
    @player1 = player1
    @player2 = player2
    @current_turn = player1
    @single_player = single_player
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

  def computers_turn?
    computers_turn
  end

  def paralyze(player)
    player.receive_paralysis
  end

private

  def losing_player
    players = [@player1, @player2]
    players.select{|player| player.hp == 0}.first
  end

  def computers_turn
    @single_player && @current_turn == @player2
  end

  def self.create(player1, player2, single_player=false)
    @game = Game.new(player1, player2, single_player)
  end
  
  def self.instance
    @game
  end
end
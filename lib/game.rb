class Game
  def initialize(player: Player)
    @player1 = player.new("Player1")
    @player2 = player.new("Player2")
  end
  
  def attack(player)
    player.receive_damage
  end
end
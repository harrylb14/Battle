class Attack

  def initialize(player)
    @player = player
  end

  def run
    @player.receive_damage
  end
end
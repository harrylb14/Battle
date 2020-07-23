class Player
  attr_reader :name
  attr_accessor :hp
  DEFAULT_HITPOINTS = 100
  def initialize(name, hp=DEFAULT_HITPOINTS)
    @name = name
    @hp = hp
  end

  def receive_damage(damage = rand(20))
    @hp -= damage
  end

  def dead
    @hp <= 0
  end
end
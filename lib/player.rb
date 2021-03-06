class Player
  attr_reader :name, :damage, :paralyzed
  attr_accessor :hp
  DEFAULT_HITPOINTS = 100
  def initialize(name, hp=DEFAULT_HITPOINTS)
    @name = name
    @hp = hp
  end

  def receive_damage(damage = rand(20))
    @damage = damage
    @hp -= damage
  end
  
  def receive_paralysis
    @paralyzed = true
  end
end

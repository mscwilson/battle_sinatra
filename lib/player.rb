class Player

  attr_reader :name, :hit_points
  STARTING_HIT_POINTS = 50
  DAMAGE_POINTS = 10

  def initialize(name)
    @name = name
    @hit_points = STARTING_HIT_POINTS
  end

  def lose_health
    @hit_points -= DAMAGE_POINTS
  end

  def attack(player)
    player.lose_health
  end


end

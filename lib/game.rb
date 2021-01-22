class Game

  attr_reader :player1, :player2

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @players = [@player1, @player2]
  end

  def current_player
    @players[0]
  end

  def player_being_attacked
    @players[1]
  end

  def attack
    player_being_attacked.lose_health
    swap_players
  end

  private #---------------------------------------------

  def swap_players
    @players.reverse!
  end

end

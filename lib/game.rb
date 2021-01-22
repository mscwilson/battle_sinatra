class Game

  attr_reader :player1, :player2, :current_player

  def initialize(player1:, player2:)
    @players = [player1, player2]
    @player1 = @players[0]
    @player2 = @players[1]
    @current_player = player1
  end

  def attack
    player_being_attacked = (current_player == player1) ? player2 : player1
    player_being_attacked.lose_health
    swap_players
  end

  def swap_players
    @current_player = (current_player == player1) ? player2 : player1
  end

end

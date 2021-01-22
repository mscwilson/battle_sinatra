require "game"

describe Game do

  let(:player1) { double(:player1, name: "Ash", hit_points: 50) }
  let(:player2) { double(:player2, name: "Gary") }

  before do
    @game = Game.new(player1, player2)
    # subject(:game) { described_class.new(player1, player2) }
  end
  
  it "players can be attacked" do
    expect(player2).to receive(:lose_health)
    @game.attack
  end

  it "swaps active player" do
    @game.swap_players
    expect(@game.current_player).to be player2
  end

  it "ends when a player reaches 0 HP" do
    allow(player2).to receive(:hit_points).and_return(0)
    expect(@game).to be_ended
  end


end

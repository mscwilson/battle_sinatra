require "game"

describe Game do

  let(:player1) { double(:player1, name: "Ash") }
  let(:player2) { double(:player2, name: "Gary") }
  subject(:game) { described_class.new(player1: player1, player2: player2) }
  
  it "players can be attacked" do
    expect(player2).to receive(:lose_health)
    game.attack
  end

  it "swaps active player after attack" do
    allow(player2).to receive(:lose_health)
    game.attack
    expect(game.current_player).to be player2
  end



end

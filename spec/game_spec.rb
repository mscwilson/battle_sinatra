require "game"

describe Game do

  let(:player1) { double(name: "Ash") }
  let(:player2) { double(name: "Gary") }
  subject(:game) { described_class.new(player1: player1, player2: player2) }
  
  it "players can be attacked" do
    expect(player2).to receive(:lose_health)
    game.attack(player2)
  end



end

require "game"

describe Game do

  let(:player1) { double(name: "Ash") }
  let(:player2) { double(name: "Gary") }
  
  it "players can be attacked" do
    expect(player2).to receive(:lose_health)
    subject.attack(player2)
  end



end

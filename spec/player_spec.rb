require "player"

describe Player do

  subject(:player1) { described_class.new("Ash")}
  subject(:player2) { described_class.new("Gary")}


  it "has a name" do
    expect(player2.name).to eq "Gary"
  end

  it "has hit points" do
    expect(player2.hit_points).to eq Player::STARTING_HIT_POINTS
  end

  it "loses HP in attack" do
    expect { player2.lose_health }.to change { player2.hit_points }.by (- Player::DAMAGE_POINTS)
  end

  it "can attack other player" do
    expect(player2).to receive(:lose_health)
    player1.attack(player2)
  end

    
end

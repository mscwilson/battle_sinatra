require "player"

describe Player do

  it "has a name" do
    player_1 = described_class.new("Ash")
    expect(player_1.name).to eq "Ash"
  end

  
end

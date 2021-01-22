feature "players in the game" do

  scenario "enter names into a form and get confirmation" do
    sign_in_and_play
    expect(page).to have_text "Ash! - versus - Gary!"
  end

  scenario "switch turns" do
    sign_in_and_play
    attack_and_confirmation
    expect(page).to have_text "It's Gary's turn"
  end

  scenario "switching turns attacks the correct player" do
    sign_in_and_play
    attack_and_confirmation
    attack_and_confirmation
    expect(page).to have_text "Ash: 40 HP"
    expect(page).not_to have_text "Gary: 30 HP"
  end


end

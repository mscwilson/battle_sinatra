feature "players in the game" do

  scenario "enter names into a form and get confirmation" do
    sign_in_and_play
    expect(page).to have_text "Ash! - versus - Gary!"
  end

  scenario "switch turns" do
    sign_in_and_play
    click_button "Attack"
    click_link "Great"
    expect(page).to have_text "It's Gary's turn"
  end

  scenario "switching turns attacks the correct player" do
    sign_in_and_play
    click_button "Attack"
    click_link "Great"
    click_button "Attack"
    click_link "Great"
    expect(page).to have_text "Ash: 40 HP"
    expect(page).not_to have_text "Gary: 30 HP"
  end


end

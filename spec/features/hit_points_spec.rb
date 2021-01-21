feature "hit points" do
  
  scenario "viewing P2 HP" do
    sign_in_and_play
    expect(page).to have_content "Gary: 50 HP"

  end

  scenario "P1 attacks P2" do
    sign_in_and_play
    click_button "Attack"
    expect(page).to have_text "Ash attacked Gary!"
  end

  scenario "P1 attack reduces P2 HP" do
    sign_in_and_play
    click_button "Attack"
    click_link "Great"
    expect(page).not_to have_content "Gary: 50 HP"
    expect(page).to have_content "Gary: 40 HP"
  end



end

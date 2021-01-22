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

  scenario "P2 attacks P1" do
    sign_in_and_play
    attack_and_confirmation
    click_button "Attack"
    expect(page).to have_text "Gary attacked Ash!"
  end

  scenario "P1 attack reduces P2 HP" do
    sign_in_and_play
    attack_and_confirmation
    expect(page).not_to have_content "Gary: 50 HP"
    expect(page).to have_content "Gary: 40 HP"
  end

  scenario "a player gets to 0HP and loses the game" do
    sign_in_and_play
    attack_repeatedly_to_kill_p2
    expect(page).to have_text "Gary: 0 HP"
    expect(page).to have_text "Ash is the winner!!"
    
  end



end

feature "attacking" do

  scenario "P1 attacks P2" do
    sign_in_and_play
    click_button "Attack"
    expect(page).to have_text "Ash attacked Gary!"
  end


end

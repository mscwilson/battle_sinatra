feature "hit points" do
  
  scenario "viewing P2 HP" do
    visit "/"
    fill_in "p1name", with: "Ash"
    fill_in "p2name", with: "Gary"
    click_button "Submit names"
    expect(page).to have_content "Gary: 20 HP"

  end




end

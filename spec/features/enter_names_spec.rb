feature "entering names" do

  scenario "display names off a form" do
    visit "/"
    fill_in "p1name", with: "Ash"
    fill_in "p2name", with: "Gary"
    click_button "Submit names"
    expect(page).to have_text "Gary"
  end


end

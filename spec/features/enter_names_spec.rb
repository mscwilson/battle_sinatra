feature "entering names" do

  scenario "display names off a form" do
    sign_in_and_play
    expect(page).to have_text "Ash! - versus - Gary!"
  end


end

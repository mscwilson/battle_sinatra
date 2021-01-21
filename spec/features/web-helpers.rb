def sign_in_and_play
  visit "/"
  fill_in "p1name", with: "Ash"
  fill_in "p2name", with: "Gary"
  click_button "Submit names"
end

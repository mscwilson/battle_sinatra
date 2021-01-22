def sign_in_and_play
  visit "/"
  fill_in "p1name", with: "Ash"
  fill_in "p2name", with: "Gary"
  click_button "Submit names"
end

def attack_and_confirmation
  click_button "Attack"
  click_button "Great"
end

def attack_repeatedly_to_kill_p2
  # start at 50 HP
  attack_and_confirmation
  attack_and_confirmation
  # both at 30 HP
  attack_and_confirmation
  attack_and_confirmation
  # both at 20 HP
  attack_and_confirmation
  attack_and_confirmation
  # both at 10 HP
  attack_and_confirmation
  attack_and_confirmation
  # P2 to 0 HP
  attack_and_confirmation
end
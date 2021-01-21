feature "testing infrastructure" do 

  scenario "displays test text" do
    visit "/"
    expect(page).to have_text("Battle time!")
  end
  
end

feature "testing infrastructure" do 

  scenario "displays test text" do
    visit "/"
    expect(page).to have_content("Testing infrastructure working!")
  end
  
end

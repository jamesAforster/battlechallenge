# feature 'test homepage displays "Testing infrastructure working!"' do
#   scenario "arriving on homepage" do
#     visit '/'
#     expect(page).to have_content('Testing infrastructure working!')
#   end
# end

feature 'Enter names' do
  scenario 'players enter name and it returns input on the screen' do
    sign_in_and_play
    expect(page).to have_content "James vs. Josh"
  end
end

feature 'Dispays health bars' do
  scenario "user can see their opponent's health bar" do
    sign_in_and_play
    expect(page).to have_content "100hp"
    expect(page).to have_content "100hp"
  end
end

feature 'Displays usable attack button' do
  scenario "displays attack button" do
    sign_in_and_play
    expect(page).to have_button('Attack')
  end

  scenario "attack will show confirmation" do
    sign_in_and_play
    click_button('Attack')
    expect(page).to have_content("Player 1 attacked!")
  end

end


  

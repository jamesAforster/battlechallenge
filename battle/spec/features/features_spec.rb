# feature 'test homepage displays "Testing infrastructure working!"' do
#   scenario "arriving on homepage" do
#     visit '/'
#     expect(page).to have_content('Testing infrastructure working!')
#   end
# end
feature 'Enter names' do
  scenario 'players enter name and it returns input on the screen' do
    visit('/')
    fill_in :player_1_name, with: 'James'
    fill_in :player_2_name, with: 'Josh'
    click_button 'Submit'
    expect(page).to have_content "James vs. Josh"
  end
end

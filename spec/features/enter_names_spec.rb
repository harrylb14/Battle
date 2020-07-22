feature 'entering names and returning them on screen' do
  scenario "filling in names" do 
    sign_in_and_play
    expect(page).to have_content "Haz vs. Lane"
  end
end

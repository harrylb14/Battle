feature 'viewing hitpoints' do
  scenario 'viewing other players hit points' do
    sign_in_and_play
    expect(page).to have_content "Haz2 HP: 100"
    expect(page).to have_content "Haz HP: 100"
  end
end

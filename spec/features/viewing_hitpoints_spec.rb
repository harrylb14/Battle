feature 'viewing hitpoints' do
  scenario 'viewing other players hit points' do
    sign_in_and_play
    expect(page).to have_content "Lane HP: 100"
  end
end
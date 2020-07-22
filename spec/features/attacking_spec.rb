feature 'attacking other player' do
  scenario 'player 1 attacks player 2' do
    sign_in_and_play
    click_button 'Attack!'
    expect(page).to have_content 'Haz attacked Lane!'
  end

  scenario 'attacking another player removes 10 hitpoints' do
    sign_in_and_play
    click_button 'Attack!'
    expect(page).to have_content 'Lane HP: 90'
    expect(page).to_not have_content 'Lane HP: 100'
  end
end

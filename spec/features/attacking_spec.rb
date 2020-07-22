feature 'attacking other player' do
  scenario 'player 1 attacks player 2' do
    sign_in_and_play
    click_button 'Attack!'
    expect(page).to have_content 'Haz attacked Haz2!'
  end
  scenario 'player 2 attacks player 1' do
    sign_in_and_play
    click_button 'Attack!'
    click_button 'OK'
    click_button 'Attack!'
    expect(page).to have_content 'Haz2 attacked Haz!'
  end

  scenario 'attacking player 2 removes 10 hit points from player 2' do
    sign_in_and_play
    click_button 'Attack!'
    expect(page).to have_content 'Haz2 HP: 90'
    expect(page).to_not have_content 'Haz2 HP: 100'
  end

  scenario 'attacking player 1 removes 10 hit points from player 1' do
    sign_in_and_play
    click_button 'Attack!'
    click_button 'OK'
    click_button 'Attack!'
    expect(page).to have_content 'Haz HP: 90'
    expect(page).to_not have_content 'Haz2 HP'
  end
end

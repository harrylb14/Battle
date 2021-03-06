feature 'attacking other player' do
  scenario 'player 1 attacks player 2' do
    sign_in_and_play
    click_button 'Attack!'
    expect(page).to have_content 'Haz attacked Haz2!'
  end
  scenario 'player 2 attacks player 1' do
    sign_in_and_play
    attack_confirm
    click_button 'Attack!'
    expect(page).to have_content 'Haz2 attacked Haz!'
  end

  scenario 'attacking player 2 removes random hit points from player 2' do
    srand(67809)
    sign_in_and_play
    click_button 'Attack!'
    expect(page).to have_content 'Haz2 HP: 82'
    expect(page).to_not have_content 'Haz2 HP: 100'
  end

  scenario 'attacking player 1 removes random hit points from player 1' do
    srand(67809)
    sign_in_and_play
    attack_confirm
    click_button 'Attack!'
    expect(page).to have_content 'Haz HP: 87'
    expect(page).to_not have_content 'Haz HP: 100'
  end

  scenario 'attacks display damage dealt' do
    srand(67809)
    sign_in_and_play
    click_button 'Attack!'
    expect(page).to have_content 'Haz dealt 18 points of damage.'
  end

  scenario 'attack misses if damage is 0' do 
    srand(86)
    sign_in_and_play
    click_button 'Attack!'
    expect(page).to have_content 'Haz missed!!'
  end
end

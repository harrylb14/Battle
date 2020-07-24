feature 'computerised players' do
  scenario 'there is a button to create a computerised player' do
    visit '/'
    expect(page).to have_selector(:button, 'Play against the computer!')
  end
  scenario 'against the computer button starts new game with names included' do
    start_solo_game
    expect(page).to have_content "Haz vs. computer"
  end
  scenario 'it is always player 1s turn' do
    start_solo_game
    attack_confirm
    click_button 'OK'
    expect(page).to have_content "Haz's turn"
  end
  scenario 'computer automatically attacks after player attacks' do
    start_solo_game
    attack_confirm
    expect(page).to have_content "computer attacked Haz"
  end
end
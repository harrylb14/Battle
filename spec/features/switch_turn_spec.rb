feature 'turn switching' do 
  scenario 'at the beginning of the game' do
    sign_in_and_play
    expect(page).to have_content "Haz's turn"
  end

  scenario 'after player 1 attacks' do
    sign_in_and_play
    click_button 'Attack!'
    click_button 'OK'
    expect(page).to have_content "Haz2's turn"
    expect(page).not_to have_content "Haz's turn"
  end
end
  

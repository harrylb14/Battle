feature 'turn switching' do 
  scenario 'at the beginning of the game' do
    sign_in_and_play
    expect(page).to have_content "Haz's turn"
  end

  scenario 'after player 1 attacks' do
    sign_in_and_play
    attack_confirm
    expect(page).to have_content "Haz2's turn"
    expect(page).to_not have_content "Haz's turn"
  end

  scenario 'after player 2 attacks' do
    sign_in_and_play
    both_attack_multiple_times(1)
    expect(page).to have_content "Haz's turn"
    expect(page).not_to have_content "Haz2's turn"
  end
end
  

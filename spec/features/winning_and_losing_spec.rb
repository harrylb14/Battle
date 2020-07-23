feature 'losing' do
  scenario 'player 1 reaches 0HP before player 2' do
    srand(67809)
    sign_in_and_play
    both_attack_multiple_times(10)
    expect(page).to have_content  "Haz is the loser!"
  end
  scenario 'player 2 reaches 0HP before player 1' do
    srand(67810)
    sign_in_and_play
    both_attack_multiple_times(7)
    attack_confirm
    expect(page).to have_content  "Haz2 is the loser!"
  end
end

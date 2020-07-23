feature 'losing' do
  scenario 'player 1 reaches 0HP before player 2' do
    sign_in_and_play
    both_attack_multiple_times(9)
    attack_confirm
    expect(page).to have_content  "Haz2 is the loser!"
  end
end

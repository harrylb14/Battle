feature 'losing' do
  scenario 'player 2 reaches 0HP before player 1' do
    srand(67809)
    sign_in_and_play
    both_attack_multiple_times(10)
    expect(page).to have_content  "Haz is the loser!"
  end
end

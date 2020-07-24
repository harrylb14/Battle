def sign_in_and_play
    visit '/' 
    fill_in :Player1_Name, with: "Haz"
    fill_in :Player2_Name, with: "Haz2"
    click_button 'Enter Names'
end

def attack_confirm
    click_button 'Attack!'
    click_button 'OK'
end

def both_attack_multiple_times(x)
  (2*x).times do 
     attack_confirm
  end
end

def start_solo_game
  visit '/' 
  fill_in :Player1_Name, with: "Haz"
  fill_in :Player2_Name, with: "computer"
  click_button "Play against the computer!"
end

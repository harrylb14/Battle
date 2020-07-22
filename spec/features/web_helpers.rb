def sign_in_and_play
    visit '/' 
    fill_in :Player1_Name, with: "Haz"
    fill_in :Player2_Name, with: "Lane"
    click_button 'Enter Names'
end
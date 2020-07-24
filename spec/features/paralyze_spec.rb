feature 'there is an attack which paralyzes' do
  scenario 'there is a paralyze button' do
    sign_in_and_play
    expect(page).to have_selector(:button, 'Paralyze')
  end
  scenario 'button takes us to paralysis page' do
    sign_in_and_play
    click_button 'Paralyze'
    expect(page).to have_content("Haz used Paralyze Attack!")
  end
end
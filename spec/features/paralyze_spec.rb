feature 'there is an attack which paralyzes' do
  scenario 'there is a paralyze button' do
    sign_in_and_play
    expect(page).to have_selector(:button, 'Paralyze')
  end
end
feature 'viewing hit points' do
  scenario 'view player 2 hit points' do
    sign_in_and_play
    expect(page).to have_content "Bob 60HP"
  end
end
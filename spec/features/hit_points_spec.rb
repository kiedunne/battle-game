
feature 'View hit points' do
  scenario 'Can view player hit points' do
    sign_in_and_play
    expect(page).to have_content "Jackie: 60HP"
  end
end

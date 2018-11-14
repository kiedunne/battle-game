
feature 'Attacking' do
  scenario 'Can hit player 2' do
    sign_in_and_play
    click_link "Attack"
    expect(page).to have_content "Jackie hit Kie"
  end
end

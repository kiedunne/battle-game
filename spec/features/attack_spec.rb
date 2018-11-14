
feature 'Attacking' do
  scenario 'Reduce player 2 HP by 10' do
    sign_in_and_play
    click_button "Attack"
    # click_link "OK"
    expect(page).not_to have_content 'Kie: 60HP'
    expect(page).to have_content "Kie: 50HP"
  end
end


feature 'Attacking' do

  scenario 'Player 1 turn- Reduce player 2 HP by 10' do
    sign_in_and_play
    click_button "Attack"
    expect(page).not_to have_content 'Kie: 60HP'
    expect(page).to have_content "Kie: 50HP"
  end

    scenario 'Player 2 turn- Reduce player 2 HP by 10' do
      sign_in_and_play
      click_button("Attack")
      click_button("OK")
      expect(page).not_to have_content "Jackie: 60HP"
      expect(page).to have_content "Jackie: 50HP"

    end

  end

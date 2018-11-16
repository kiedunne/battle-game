
feature 'See switched players turn' do

  scenario 'See that its other players turn' do
    sign_in_and_play
    click_button("Attack")
    click_button("Attack")
    expect(page).not_to have_content "It's Jackie's Turn"
    expect(page).to have_content "It's Kie's Turn"
  end
end

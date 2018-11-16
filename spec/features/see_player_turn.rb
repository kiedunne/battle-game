
feature 'See player turn after starting game' do

  scenario 'See player turn' do
    sign_in_and_play
    expect(page).to have_content "It's Jackie's Turn"
  end
end


feature 'Test name entry' do
  scenario 'Can enter player names' do
    sign_in_and_play
    expect(page).to have_content "Jackie vs. Kie!"
  end
end

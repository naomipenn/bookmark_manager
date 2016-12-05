feature 'Creating links' do

  scenario 'I can create a new link' do
    visit '/links/new'
    fill_in 'url',   with: 'http://www.popcultureplaypen.com'
    fill_in 'title', with: 'Pop Culture Playpen'
    click_button 'Create Link'

    # we expect to be redirected back to the links page
    expect(current_path).to eq '/links'

    within 'ul#links' do
      expect(page).to have_content('Pop Culture Playpen')
    end
  end
end

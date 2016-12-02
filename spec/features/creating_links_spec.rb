require './app/app'

feature 'Creating links' do

  scenario 'I can create a new link' do
    visit '/links/new'
    fill_in 'title', with: 'Pop Culture Playpen'
    fill_in 'url', with: 'http://www.popcultureplaypen.com'
    click_button 'Create Link'

    expect(current_path).to eq '/links'

    within 'ul#links' do
      expect(page).to have_content('Pop Culture Playpen')
    end
  end
end

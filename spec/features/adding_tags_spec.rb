feature 'Adding tags' do

  scenario 'I can add a single tag to a new link' do
    visit '/links/new'
    fill_in 'url',   with: 'http://huhbub.com'
    fill_in 'title', with: 'Huhbub'
    fill_in 'tags',  with: 'campaigns'

    click_button 'Create Link'
    link = Link.first
    expect(link.tags.map(&:name)).to include('campaigns')
  end

  scenario 'I can add multiple tags to a new link' do
    visit '/links/new'
    fill_in 'url', with: 'http://www.huhbub.com'
    fill_in 'title', with: 'Huhbub'

    fill_in 'tags', with: 'events books'
    click_button 'Create Link'
    link = Link.first
    expect(link.tags.map(&:name)).to include('events', 'books')
  end
end

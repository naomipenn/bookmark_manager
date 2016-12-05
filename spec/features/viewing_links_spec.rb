require 'spec_helper'

feature 'Viewing links' do
  scenario 'I can see existing links on the links page' do
    Link.create(url: 'http://www.huhbub.com', title: 'Huhbub')

    visit('/links')

    expect(page.status_code).to eq 200

    within 'ul#links' do
      expect(page).to have_content('Huhbub')
    end
  end

  before(:each) do
    Link.create(url: 'http://www.huhbub.com', title: 'Huhbub', tags: [Tag.first_or_create(name: 'campaigns')])
    Link.create(url: 'http://www.popcultureplaypen.com', title: 'Pop Culture Playpen', tags: [Tag.first_or_create(name: 'pop culture')])
    Link.create(url: 'http://www.theavclub.com', title: 'The A.V. Club', tags: [Tag.first_or_create(name: 'television')])
    Link.create(url: 'http://the-toast.net', title: 'The Toast', tags: [Tag.first_or_create(name: 'television')])
  end

  scenario 'I can filter links by tag' do
    visit '/tags/television'

  expect(page.status_code).to eq(200)
  within 'ul#links' do
    expect(page).not_to_have_content('Huhbub')
    expect(page).not_to_have_content('Pop Culture Playpen')
    expect(page).to have_content('The AV Club')
    expect(page).to have_content ('The Toast')
    end
  end

end

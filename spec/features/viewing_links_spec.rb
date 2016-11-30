feature "Viewing links" do

  scenario "see a list of links" do
    Link.create(url 'http://www.huhbub.com', title: 'Huhbub')
    visit '/links'

    expect(page.status_code).to eq 200

    within 'ul#links' do
      expect(page).to have_content('Huhbub')
    end
  end
end

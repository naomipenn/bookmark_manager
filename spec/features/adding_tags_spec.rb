require './app/app'
# 
# feature 'Adding tags' do
#
#   scenario 'I can add a single tag to a new link' do
#     visit '/links/new'
#     fill_in 'url', with: 'http://www.avclub.com'
#     fill_in 'title' with: The A.V. Club
#     fill_in 'tags', with: 'pop culture'
#
#     click_button 'Create link'
#     link = Link.first
#     expect(link.tags.map(&:name)).to include('pop culture')
#   end
#
# end

require 'rails_helper.rb'

feature 'Creating posts' do
  scenario 'can create a post' do
    visit '/'
    click_link 'New Post'
    fill_in 'Message', with: 'this is a test post #yeahboi'
    click_button 'Create Post'
    expect(page).to have_content('#yeahboi')
  end
end

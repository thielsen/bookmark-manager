require './app'

RSpec.describe Bookmark do

  scenario 'confirms home page is working' do
    visit('/')
    expect(page).to have_content("Welcome to the Bookmarker")
  end
end

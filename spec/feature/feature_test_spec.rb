require './app'

RSpec.describe App do
  before(:each) do
    test_db_configure
  end

  scenario 'confirms home page is working' do
    visit('/')
    expect(page).to have_content("Welcome to the Bookmarker")
  end

  scenario 'confirms we can view bookmarks' do
    visit('/bookmarks')
    expect(page).to have_content("[\"http://www.askjeeves.com\", \"http://www.twitter.com\", \"http://www.google.com\"]")
  end

end

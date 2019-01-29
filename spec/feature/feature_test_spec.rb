require './app'

RSpec.describe App do

  scenario 'confirms home page is working' do
    visit('/')
    expect(page).to have_content("Welcome to the Bookmarker")
  end

  scenario 'confirms we can view bookmarks' do
    visit('/bookmarks')
    expect(page).to have_content(["http://www.makersacademy.com", "http://www.google.com", "http://destroyallsoftware.com"])
  end

end

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
    expect(page).to have_content("Ask Jeeves")
  end

  scenario 'confirm we can add a bookmark' do
    visit('/bookmarks')
    fill_in "title", :with => "BBC"
    fill_in "new_bookmark", :with => "http://www.bbc.co.uk"
    click_button 'Add'
    expect(page).to have_content("BBC")
  end

  scenario 'confirm we can delete a bookmark' do
    visit('/bookmarks')
    fill_in "title", :with => "BBC"
    fill_in "new_bookmark", :with => "http://www.bbc.co.uk"
    fill_in "title_delete", :with => "BBC"
    click_button 'Delete'
    expect(page).to_not have_content("BBC")
  end

end

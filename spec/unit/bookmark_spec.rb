require 'bookmark'

describe Bookmark do
  describe '.all' do
    before(:each) do
      test_db_configure
    end
    it 'returns all bookmarks' do
      bookmarks = Bookmark.all
      expect(bookmarks).to include('http://www.askjeeves.com')
      expect(bookmarks).to include('http://www.twitter.com')
    end
  end
end

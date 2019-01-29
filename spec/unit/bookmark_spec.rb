require 'bookmark'

describe Bookmark do
  describe '.all' do
    before(:each) do
      test_db_configure
    end
    
    it 'returns all bookmarks' do
      expect(Bookmark.all).to include('http://www.askjeeves.com')
      expect(Bookmark.all).to include('http://www.twitter.com')
    end

    it 'adds a bookmark' do
      Bookmark.add('http://www.dog.com')
      expect(Bookmark.all).to include('http://www.dog.com')
    end

  end
end

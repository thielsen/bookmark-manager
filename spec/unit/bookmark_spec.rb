require 'bookmark'

describe Bookmark do
  describe '.all' do
    before(:each) do
      test_db_configure
    end

    it 'returns all bookmarks' do
      expect(Bookmark.all[0].title).to include('Ask Jeeves')
      expect(Bookmark.all[1].title).to include('Twitter')
    end

    it 'adds a bookmark' do
      Bookmark.add('DOG', 'http://www.dog.com')
      expect(Bookmark.all[3].title).to include('DOG')
    end

  end
end

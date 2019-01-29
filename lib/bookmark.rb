require 'pg'

class Bookmark

  def self.all
    @db = PG.connect :dbname => 'bookmark_manager', :user => 'simon'
    @rows = @db.exec "SELECT * FROM bookmarks"
    @urls = []
    @rows.each do |row|
      @urls << row['url']
    end
    @urls
  end
end

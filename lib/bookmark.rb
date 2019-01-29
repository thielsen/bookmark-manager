require 'pg'

class Bookmark

  def self.all
    connect_db
    @rows = @db.exec "SELECT * FROM bookmarks;"
    @urls = []
    @rows.each do |row|
      @urls << row['url']
    end
    @urls
  end

  def self.add(new_bookmark)
    connect_db
    @db.exec "INSERT INTO bookmarks (url) VALUES (\'#{new_bookmark}\');"
  end

  private

  def self.connect_db
    ENV['DB'] = 'bookmark_manager' if ENV['DB'] == nil
    @db = PG.connect :dbname => ENV['DB'], :user => 'simon'
  end

end

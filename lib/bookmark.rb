require 'pg'

class Bookmark

  attr_reader :id, :title, :url

  def initialize(id, title, url)
    @id = id
    @title = title
    @url = url
  end

  def self.all
    connect_db
    @rows = @db.exec "SELECT * FROM bookmarks;"
    @list = []
    @rows.each do |row|
      @list << Bookmark.new(row['id'], row['title'], row['url'])
    end
    @list
  end

  def self.add(title, new_bookmark)
    connect_db
    @db.exec "INSERT INTO bookmarks (url, title) VALUES ('#{new_bookmark}', '#{title}');"
  end

  def self.delete(title)
    connect_db
    @db.exec "DELETE FROM bookmarks WHERE title = '#{title}';"
  end

  private

  def self.connect_db
    ENV['DB'] = 'bookmark_manager' if ENV['DB'] == nil
    @db = PG.connect :dbname => ENV['DB'], :user => 'simon'
  end

end

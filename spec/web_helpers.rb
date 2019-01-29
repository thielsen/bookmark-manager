def test_db_configure
  @db = PG.connect :dbname => ENV['DB']
  @db.exec "TRUNCATE bookmarks"
  @db.exec "INSERT INTO bookmarks (url) VALUES ('http://www.askjeeves.com');"
  @db.exec "INSERT INTO bookmarks (url) VALUES ('http://www.twitter.com');"
  @db.exec "INSERT INTO bookmarks (url) VALUES ('http://www.google.com');"
end

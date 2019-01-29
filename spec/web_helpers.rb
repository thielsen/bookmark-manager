def test_db_configure
  @db = PG.connect :dbname => ENV['DB']
  @db.exec "TRUNCATE bookmarks"
  @db.exec "INSERT INTO bookmarks (url, title) VALUES ('http://www.askjeeves.com', 'Ask Jeeves');"
  @db.exec "INSERT INTO bookmarks (url, title) VALUES ('http://www.twitter.com', 'Twitter');"
  @db.exec "INSERT INTO bookmarks (url, title) VALUES ('http://www.google.com', 'Google');"
end

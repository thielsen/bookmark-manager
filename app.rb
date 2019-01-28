require 'sinatra/base'
require_relative './lib/bookmark'

class App < Sinatra::Base

  get '/' do
    'Welcome to the Bookmarker'
  end

  get '/bookmarks' do
    @bookmarks = Bookmark.all
    erb :'bookmarks/index'
  end

  run! if app_file == $0

end
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

  post '/add' do
    Bookmark.add(params[:title], params[:new_bookmark])
    redirect '/bookmarks'
  end

  post '/delete' do
    Bookmark.delete(params[:title_delete])
    redirect '/bookmarks'
  end

  run! if app_file == $0

end

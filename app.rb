require 'sinatra/base'

class Bookmark < Sinatra::Base

  get '/' do
    'Welcome to the Bookmarker'
  end

end

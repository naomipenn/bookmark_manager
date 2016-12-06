ENV['RACK_ENV'] ||= 'development'

require 'sinatra/base'
require_relative '../db/data_mapper_setup'

class BookmarkManager < Sinatra::Base

  get '/' do
    'Hello Bookmarkmanager!'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end

require 'sinatra'
require 'sinatra/base'
require 'sinatra/flash'
require 'haml'
require_relative 'database_connection.rb'

class Chitter < Sinatra::Base
  enable :sessions
  register Sinatra::Flash

  get '/' do
    'Hello World'
  end

end

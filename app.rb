require 'sinatra'
require 'sinatra/base'
require 'sinatra/flash'
require 'haml'

class Chitter < Sinatra::Base
  enable :sessions
  register Sinatra::Flash

  

end

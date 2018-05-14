require 'data_mapper'
require 'sinatra'
require 'sinatra/base'
require 'sinatra/flash'
require_relative './lib/user.rb'
require_relative './lib/comments.rb'
require_relative './lib/peeps.rb'
load './lib/database_connection.rb'
# load './database_connection.rb'

class Chitter < Sinatra::Base

  configure do
    enable :sessions
    register Sinatra::Flash
  end

  helpers do
    def current_user(user)
      session[:current_user] = user.id
      session[:username] = user.user_name
    end
  end

  get '/sign_up' do
    erb :sign_up
  end

  post '/sign_up' do
    user = User.create(user_name: params[:user_name],
          password: params[:password],
          email: params[:email])
      if user.saved?
        flash[:sign_up_message] = 'Sign up successful'
      else
        flash[:sign_up_message] = 'Incorrect details, try again'
      end
  end

  get '/' do
    erb :login
  end

  post '/login' do
jifojiafijagi
    if user = User.first(user_name: params[:log_in])
      current_user(user)
      flash[:login_sucess] = 'successfully logged in'
    else
      flash('Incorrect details')
    end
    redirect '/'
  end

  run! if __FILE__ == $0
end

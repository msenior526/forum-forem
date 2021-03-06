require './config/environment'
require 'sinatra/flash'
class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    enable :sessions
    register Sinatra::Flash
    set :session_secret, ENV['SESSION_SECRET']
  end

  error Sinatra::NotFound do 
    erb :error
  end 

  get "/" do
    erb :welcome
  end

  helpers do
    def current_user
			@current_user ||= User.find(session[:user_id]) if session[:user_id]
    end
    
    def logged_in?
			!!current_user
    end
    
    def redirect_if_not_logged_in
      if !logged_in?
        redirect "/login"
      end
    end
  end


end

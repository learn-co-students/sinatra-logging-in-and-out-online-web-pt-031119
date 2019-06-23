require_relative '../../config/environment'
class ApplicationController < Sinatra::Base
  configure do
    set :views, Proc.new { File.join(root, "../views/") }
    enable :sessions unless test?
    set :session_secret, "secret"
  end

  get '/' do
    erb :index
  end

  post '/login' do
    @username= params[:username]
    @password= params[:password]
    
    @user = User.find_by(username: @username)
    
    if !@user
      erb :error
    elsif @user.password == @password
      session[:user_id] = @user.id
      redirect to '/account'
    else 
      erb :error
    end
    #binding.pry


  end

  get '/account' do
   if session[:user_id]
    @userid= session[:user_id]
    @username = User.find_by(id: @userid).username
    @balance = User.find_by(id: @userid).balance
    erb :account
   end
   erb :error

  

  end

  get '/logout' do

  end

  get '/sessions/logout' do
    session.clear
    redirect '/'
  end
end


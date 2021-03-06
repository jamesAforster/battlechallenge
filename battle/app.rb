require 'sinatra/base'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
    # 'Testing infrastructure working!'
  end

  post '/names' do
    session[:player_1_name] = params[:player_1_name]
    session[:player_2_name] = params[:player_2_name]
    redirect to('/play')
  end

  get '/play' do
    @player_1_name = session[:player_1_name]
    @player_2_name = session[:player_2_name]
    @player_1_hp = 100
    @player_2_hp = 100
    erb :play
  end

  get '/attack' do
    erb :attack
  end

end
# rackup -p 4567  NOT SHOTGUN!!!

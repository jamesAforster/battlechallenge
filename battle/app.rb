require 'sinatra/base'

class Battle < Sinatra::Base
  get '/' do
    erb :index
    # 'Testing infrastructure working!'
  end
  post '/names' do
    @player_1_name = params[:player_1_name]
    @player_2_name = params[:player_2_name]
    erb :play
  end
end
# rackup -p 4567  NOT SHOTGUN!!!

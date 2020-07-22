require 'sinatra/base'
require './lib/player'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do 
    erb :index
  end

  post '/names' do
    $Player1 = Player.new(params[:Player1_Name])
    $Player2 = Player.new(params[:Player2_Name])
    redirect '/play'
  end

  get '/play' do
    @Player1_Name = $Player1.name
    @Player2_Name = $Player2.name
    erb :play
  end

  get '/attack' do
    game = Game.new
    @Player1 = $Player1
    @Player2 = $Player2
    game.attack(@Player2)
    erb :attack
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
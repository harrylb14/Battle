require 'sinatra/base'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do 
    erb :index
  end

  post '/names' do
    player1 = Player.new(params[:Player1_Name])
    player2 = Player.new(params[:Player2_Name])
    $game = Game.new(player1, player2)
    redirect '/play'
  end

  get '/play' do
    @game = $game
    erb :play
  end

  get '/attack' do
    @game = $game
    @game.attack(@game.opposite_player)
    erb :attack
  end

  post '/switch-turns' do
    $game.switch_turns
    redirect('/play')
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
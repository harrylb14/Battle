require 'sinatra/base'
require './lib/player'
require './lib/game'
require './lib/attack'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do 
    erb :index
  end

  post '/names' do
    player1 = Player.new(params[:Player1_Name])
    player2 = Player.new(params[:Player2_Name])
    @game = Game.create(player1, player2)
    redirect '/play'
  end

  get '/play' do
    @game = Game.instance
    erb :play
  end

  get '/attack' do
    @game = Game.instance
    Attack.run(@game.opposite_player)
    erb :attack
  end

  post '/switch-turns' do
    @game = Game.instance
    redirect('/game-over') if @game.game_over?
    @game.switch_turns
    redirect('/play')
  end

  get '/game-over' do
    @game = Game.instance
    erb :game_over
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end

require 'sinatra/base'
require 'capybara/rspec'
require 'rspec'
require_relative './lib/player.rb'
require_relative './lib/game.rb'

class Battle < Sinatra::Base

  enable :sessions
  set :session_secret, "My session secret"

  get '/' do
    erb(:index)
  end

  post '/names' do
    player1 = Player.new(params[:player1])
    player2 = Player.new(params[:player2])
    $game = Game.new(player1, player2)
    redirect '/play'
  end

  get '/play' do
    p $game
    @game = $game
    @game.player1.name
    erb(:play)
  end

  get '/attack' do
    @game = $game
    @game.attack(@game.player2)
    @game.switch_turn(@game.current_turn)
    erb :attack
  end

  run! if app_file == $0
end

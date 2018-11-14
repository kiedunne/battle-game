require 'sinatra/base'
require 'capybara/rspec'
require 'rspec'
require_relative './lib/player.rb'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    $player1 = Player.new(params[:player1])
    $player2 = Player.new(params[:player2])
    p params[:player1]
    redirect '/play'
  end

  get '/play' do
    @player1_name = $player1.name
    @player2_name = $player2.name
    erb(:play)
  end

  get '/attack' do
    @player1 = $player1
    @player2 = $player2
    @player1.attack(@player2)
    erb :attack
  end

  run! if app_file == $0
end

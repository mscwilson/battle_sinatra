require "sinatra/base"
require_relative "lib/player"
require_relative "lib/game"

class Battle < Sinatra::Base
  enable :sessions

  get "/" do
    erb(:index)
  end

  post "/names" do
    player1 = Player.new(params[:p1name])
    player2 = Player.new(params[:p2name])
    $game = Game.new(player1, player2)
    redirect "/play"
  end

  get "/play" do
    @game = $game
    erb :play
  end

  get "/attack" do
    @game = $game
    @current_player = @game.current_player
    @player_being_attacked = @game.player_being_attacked
    @game.attack
    erb :attack_confirmation
  end

  run! if app_file == $0
end

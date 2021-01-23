require "sinatra/base"
require_relative "lib/player"
require_relative "lib/game"

class Battle < Sinatra::Base
  enable :sessions

  before do
    @game = Game.instance
  end

  get "/" do
    erb(:index)
  end

  post "/names" do
    player1 = Player.new(params[:p1name])
    player2 = Player.new(params[:p2name])
    @game = Game.create(player1, player2)
    redirect "/play"
  end

  get "/play" do
    erb :play
  end

  get "/attack" do
    @game.attack
    erb :attack_confirmation
  end

  post "/swap_players" do
    @game.swap_players
    redirect "/play"
  end

  run! if app_file == $0
end

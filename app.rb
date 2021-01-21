require "sinatra/base"
require "player"

class Battle < Sinatra::Base
  enable :sessions

  get "/" do
    erb(:index)
  end

  post "/names" do
    $player1 = Player.new(params[:p1name])
    $player2 = Player.new(params[:p2name])
    redirect "/play"
  end

  get "/play" do
    @p1name = $player1.name
    @p2name = $player2.name
    @p2_hp = $player2.hit_points
    erb :play
  end

  get "/attack" do
    @p1name = $player1.name
    @p2name = $player2.name
    $player2.lose_health
    erb :attack_confirmation
  end

  run! if app_file == $0
end

require "sinatra/base"

class Battle < Sinatra::Base
  enable :sessions

  STARTING_HIT_POINTS = 20
  ATTACK_DAMAGE = 5

  get "/" do
    erb(:index)
  end

  post "/names" do
    session[:p1name] = params[:p1name]
    session[:p2name] = params[:p2name]
    redirect "/play"
  end

  get "/play" do
    @p1name = session[:p1name]
    @p2name = session[:p2name]
    erb :play
  end

  get "/attack" do
    @p1name = session[:p1name]
    @p2name = session[:p2name]
    erb :attack_confirmation
  end

  run! if app_file == $0
end

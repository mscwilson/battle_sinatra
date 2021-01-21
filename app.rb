require "sinatra/base"

class Battle < Sinatra::Base
  enable :sessions

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

  run! if app_file == $0
end

require "sinatra"

get "/" do
  "hello!"
end

get "/secret" do
  "hellooooooooooooo"
end

get "/home" do
  "this is the home page"
end

get "/dogs" do
  "pomeranians"
end

get "/city" do
  "London"
end

get "/cat" do
  "<div>
  <img src='https://www.scottishspca.org/sites/default/files/styles/full_content/public/2019-09/Buying%20a%20cat%201000x600.jpeg?itok=nvUseKh2'>
  </div>"
end
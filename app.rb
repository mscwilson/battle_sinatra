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
  "<div style='border: 3px dashed deepskyblue'>
  <img src='https://static.boredpanda.com/blog/wp-content/uploads/2016/11/pomeranian-dog-adopts-ginger-kitten-6.jpg'>
  </div>"
end
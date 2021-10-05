require "sinatra"
require "sinatra/reloader" if development?

# The if development? ensures that the auto-reloading only happens in development mode. This is important for real projects, because auto-reloading makes the server slower.

get "/" do
  "Hello world"
end

get "/secret" do
  "ciao"
end

get "/cat" do
  @name = ["Amigo", "Misty", "Almond"].sample
  erb(:index)
end

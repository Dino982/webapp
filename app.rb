require 'sinatra'
set :session_secret, 'super secret'

get '/' do
  'Oooooo! Can do!!'
end

get '/secret' do
  "I'm Mr Meeseeks! Look at me!!"
end

get '/life' do
  "I JUST WANNA DIE!"
end

get '/random-me' do
  @name = ["Mr Meeseeks", "Jerry", "Mr Needful"].sample
  erb :index
end

post '/named-me' do
  p params
  @name = params[:name]
  erb :index
end

get '/form' do
  erb :form
end

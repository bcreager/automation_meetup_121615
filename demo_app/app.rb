require 'sinatra'
require 'slim'

set :public_folder, File.dirname(__FILE__) + '/assets'

get '/' do
  redirect to('/login')
end

get '/login' do
  slim :login
end

get '/logout' do
  redirect to('/logout')
end

get '/chart' do
  slim :chart
end

post '/auth' do
  redirect to('/table')
end

get '/table' do
  slim :table
end
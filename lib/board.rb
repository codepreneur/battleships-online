require 'sinatra'
require 'json'
require_relative 'coordinates'
require_relative 'ships'

set :views, Proc.new{File.join(root,'..','views')}
set :public_folder, Proc.new{File.join(root,'..','public')}

enable :sessions

@data = {}

get '/' do
	erb :board
end

post '/build' do
	content_type 'application/json'
	data = request.body.read
  erb data, layout: false
end

post '/attack' do
	content_type 'application/json'
	data = request.body.read
  erb data, layout: false
end





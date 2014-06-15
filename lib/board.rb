require 'sinatra'
require_relative 'coordinates'
require_relative 'ships'

set :views, Proc.new{File.join(root,'..','views')}
set :public_folder, Proc.new{File.join(root,'..','public')}

enable :sessions

@data = {}

get '/' do
	erb :board
end





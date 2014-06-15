require 'sinatra'

set :views, Proc.new{File.join(root,'..','views')}
set :public_folder, Proc.new{File.join(root,'..','public')}

@data = []

get '/' do
	erb :board
end

get '/place/:coord' do

end

get '/shoot/:coord' do

end


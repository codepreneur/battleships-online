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

p a =~ /\A[A-Za-z0-9_!]{5,12}\Z/

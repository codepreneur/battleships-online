require 'board'
require 'rack/test'
require 'capybara'
require 'capybara/dsl'

Capybara.app = Sinatra::Application.new

describe 'Board' do
	include Rack::Test::Methods
	include Capybara::DSL
	
	def app
		Capybara.app
	end

	it 'home page has element with a board class' do
		visit '/'
		expect(page).to have_css '.board'
		# get '/'
		# expect(last_response).to be_ok 
	end

	it 'can place a ship' do
		
	end

end
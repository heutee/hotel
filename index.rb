require 'sinatra'

class Room
	attr_writer :type
	attr_reader :type
	def initializate(type)
		@type = type
	end

	def occupado
		"Reserved room #{@type}"
	end
end

get '/home' do
	erb :home
end

get '/about' do
	erb :about
end

get '/rooms' do
	erb :rooms
end

get '/form' do
	erb :form
end

post '/form_results' do
	@room = Room.new params[:type]
	erb :form_results
end

require 'sinatra'

class Room
	attr_writer :first_name
	attr_reader :first_name
	attr_writer :last_name
	attr_reader :last_name
	attr_writer :contact_num
	attr_reader :contact_num
	attr_writer :email
	attr_reader :email
	attr_writer :date
	attr_reader :date
	attr_writer :days
	attr_reader :days
	attr_writer :room_type
	attr_reader :room_type
	
	def initialize(first_name, last_name, contact_num, email, date, days, room_type)
		@first_name = first_name
		@last_name = last_name
		@contact_num = contact_num
		@email = email
		@date = date
		@days = days
		@room_type = room_type
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
	@room = Room.new(params[:first_name], params[:last_name], params[:contact_num], params[:email], params[:date], params[:days], params[:room])
	erb :form_results
end

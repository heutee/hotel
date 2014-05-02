require 'sinatra'

class Room
	attr_writer :type
	attr_reader :type
	def initializate(first_name, last_name, contact_num, email, date, days, type)
		@first_name = first_name
		@last_name = last_name
		@contact_num = contact_num
		@email = email
		@date = date
		@days = days
		@type = type
	end

	def occupado
		"You reserved room #{@type} for #{@days} days starting on #{@date}. We will contact you at your given contact information (#{@contact_num}, #{@email})"
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
	@room = Room.new params[:first_name, :last_name, :contact_num, :email, :date, :days, :type]
	erb :form_results
end

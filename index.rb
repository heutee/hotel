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
	attr_writer :room
	attr_reader :room
	
	def initializate(first_name, last_name, contact_num, email, date, days, room)
		@first_name = first_name
		@last_name = last_name
		@contact_num = contact_num
		@email = email
		@date = date
		@days = days
		@room = room
	end

	def occupado
		"Customer: #{@first_name} #{last_name} &mdash; You reserved a #{@room} room for #{@days} days starting on #{@date}. We will contact you at your given contact information (#{@contact_num}, #{@email}) should anything come up. Thank you for choosing to stay in Hotel California."
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

post '/form' do
	@room = Room.new params[:first_name, :last_name, :contact_num, :email, :date, :days, :room]
	erb :form_results
end

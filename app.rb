require 'sinatra'
require 'sinatra/activerecord'
require './config/environments'#database configuration
require './models/model'

get '/' do
  erb :index
end

post '/submit' do
	@model = Model.new(params[:model])
	if @model.save
		redirect back
    p 'yo'
	else
		"Sorry, there was an error!"
	end
end

get '/models.erb' do
	@models = Model.all
	erb :models
end

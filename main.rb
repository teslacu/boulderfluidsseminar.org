# myapp.rb
require 'sinatra'

get '/' do
  erb :'events/july-9-2013', :layout => :master
end

get '/:event' do
  halt 404, 'file not found' unless File.exists?("views/events/#{params[:event]}.erb")
  @eventname = params[:event].gsub('-',' ').capitalize
  erb ('events/' + params[:event]).to_sym, :layout => :master
end

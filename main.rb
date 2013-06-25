# myapp.rb
require 'sinatra'

get '/' do
  erb :'events/june-25-2013', :layout => :master
end

get '/:event' do
  halt 404, 'file not found' unless File.exists?("views/events/#{params[:event]}.erb")
  erb ('events/' + params[:event]).to_sym, :layout => :master
end

# myapp.rb
require 'sinatra'

get '/' do
  erb :index, :layout => :master
end


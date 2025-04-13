require 'sinatra'
require 'sinatra/activerecord'
require_relative 'config/environment'
require_relative 'app/models/contact-model'
require_relative 'app/routes/contact-routes'


map "/contacts" do
  run ContactRoutes.new
end
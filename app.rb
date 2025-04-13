require 'sinatra/base'
require 'sinatra/activerecord'
require_relative 'config/environment'


class App < Sinatra::Base
  register Sinatra::ActiveRecordExtension
end
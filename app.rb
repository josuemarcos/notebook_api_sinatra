require 'sinatra/base'
require 'sinatra/activerecord'
require_relative 'app/models/'


class App < Sinatra::Base
  register Sinatra::ActiveRecordExtension
end
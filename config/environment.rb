require 'sinatra/activerecord'
require 'sinatra'
require 'sinatra/base'
require 'dotenv/load'
require 'active_record'
require_relative '../app/models/contact-model'
set :database_file, 'config/database.yml'
Dotenv.load
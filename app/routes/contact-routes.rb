require 'sinatra'
require 'sinatra/activerecord'
require_relative '../controllers/contact-controller'

class ContactRoutes < Sinatra::Base

  def  initialize
    super
    @contactController = ContactController.new
  end

  before do
    content_type :json
  end

  get('/') do
    @contactController.get_all_contacts
  end

end

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

  get('/:id') do
    result = @contactController.get_contact_by_id(params[:id])
    status result[:status]
    {result: result[:body]}.to_json
  end

end

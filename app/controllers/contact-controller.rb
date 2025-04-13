require 'sinatra/base'
class ContactController 

  def get_all_contacts
    res = Contact.all

    if res.empty?
      {ok: false}
      return {msg: 'No Contact found!'}.to_json
    else
      {ok: true}
      return {contacts: res}.to_json
    end
  rescue StandardError => error
    { ok: false}
    return {msg:   "Error: #{error.message}"}.to_json
  end

  def get_contact_by_id(contact_id)
    res = Contact.find_by(id: contact_id)

    if res
      {
        body: {
          contact: res
        },
        status: 200
      }
    else
      {
        body: {
          msg: 'Contact not found!'
        },
        status: 404
      }
    end
  rescue StandardError => error
    { ok: false}
    return {msg:   "Error: #{error.message}"}.to_json
  end

end
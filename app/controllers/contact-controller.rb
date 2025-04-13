class ContactController 

  def get_all_contacts
    res = Contact.all

    if res.empty?
      {ok: false}
      return {msg: 'No Contact found!'}.to_json
    else
      {ok: true}
      return {data: res}.to_json
    end
  rescue StandardError => error
    { ok: false}
    return {msg:   "Error: #{error.message}"}.to_json
  end





end
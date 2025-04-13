contacts = [
  {
    'name': 'contact01',
    'email': 'contact01@example',
    'birthdate': '1999/01/01'
  },
  {
    'name': 'contact02',
    'email': 'contact02@example',
    'birthdate': '1999/01/02'
  },
  {
    'name': 'contact03',
    'email': 'contact03@example',
    'birthdate': '1999/01/03'
  }
]



contacts.each do |contact|
  Contact.create(contact)
end
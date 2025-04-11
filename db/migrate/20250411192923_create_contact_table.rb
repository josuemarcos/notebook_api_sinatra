class CreateContactTable < ActiveRecord::Migration[8.0]
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :email
      t.date :birthdate
      t.timestamps
    end
  end
end

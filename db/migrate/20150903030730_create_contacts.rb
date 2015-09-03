class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :header
      t.text :body
      t.string :phone

      t.timestamps null: false
    end
  end
end

class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.text :description
      t.datetime :date
      t.string :location

      t.timestamps null: false
    end
  end
end

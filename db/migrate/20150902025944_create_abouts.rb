class CreateAbouts < ActiveRecord::Migration
  def change
    create_table :abouts do |t|
      t.string :header
      t.text :body

      t.timestamps null: false
    end
  end
end

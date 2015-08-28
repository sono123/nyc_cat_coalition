class AddCatToPictures < ActiveRecord::Migration
  def change
    add_reference :pictures, :cat, index: true, foreign_key: true
  end
end

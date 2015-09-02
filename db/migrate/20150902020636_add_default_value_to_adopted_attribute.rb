class AddDefaultValueToAdoptedAttribute < ActiveRecord::Migration
  def up
	change_column :cats, :adopted, :boolean, :default => false
  end

  def down
	change_column :cats, :adopted, :boolean, :default => nil
  end
end

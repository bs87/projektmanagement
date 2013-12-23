class AddnachnameVornametuUsers < ActiveRecord::Migration
  def change
  	 add_column :users, :vorname, :string
  	 add_column :users, :nachname, :string
  end
end

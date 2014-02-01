class AddprojektidarbeitspakettoUsers < ActiveRecord::Migration
  def change
  	 add_column :users, :projekt_projektid, :integer
  	 add_column :users, :arbeitspaket_arbeitspaketid, :integer
  end
end

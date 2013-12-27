class AddprojektidarbeitspakettoUsers < ActiveRecord::Migration
  def change
  	 add_column :users, :Projekt_ProjektID, :integer
  	 add_column :users, :Arbeitspaket_ArbeitspaketID, :integer
  end
end

class AddRessourcenfunktionToRessourcens < ActiveRecord::Migration
  def change
  	  	  	add_column :ressourcens, :ressourcefunktion, :string
  end
end

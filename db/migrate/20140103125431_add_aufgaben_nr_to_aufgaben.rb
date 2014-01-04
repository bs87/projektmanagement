class AddAufgabenNrToAufgaben < ActiveRecord::Migration
  def change
  	add_column :Aufgabens, :aufgabenNr, :integer
  end
end

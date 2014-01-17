class AddKostenToRessource < ActiveRecord::Migration
  def change
  	add_column :ressourcens, :kosten, :double
  end
end

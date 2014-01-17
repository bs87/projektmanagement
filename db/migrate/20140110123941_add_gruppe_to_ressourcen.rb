class AddGruppeToRessourcen < ActiveRecord::Migration
  def change
  	add_column :ressourcens, :gruppen_id, :integer
  end
end

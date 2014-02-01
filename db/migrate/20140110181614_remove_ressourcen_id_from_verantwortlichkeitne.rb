class RemoveRessourcenIdFromVerantwortlichkeitne < ActiveRecord::Migration
  def change
  	 remove_column :verantwortlichkeitens, :ressourcen_ressourcenid
  end
end

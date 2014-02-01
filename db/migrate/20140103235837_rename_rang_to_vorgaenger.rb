class RenameRangToVorgaenger < ActiveRecord::Migration
  def change
  	rename_column :aufgabens, :aufgabenrang, :aufgabenvorgaenger
  end
end

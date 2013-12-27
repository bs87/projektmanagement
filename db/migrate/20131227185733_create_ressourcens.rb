class CreateRessourcens < ActiveRecord::Migration
  def change
    create_table(:Ressourcens) do |t|
      t.string :Ressourcename, :limit =>45
      t.string :Ressourcebeschreibung, :limit =>45
      t.string :Ressourceart, :limit =>45
      t.string :Ressourcekuerzel, :limit =>45
      t.boolean :Ressourcegenerisch
      t.integer :Ressourcemax

      t.timestamps
    end
  end
end

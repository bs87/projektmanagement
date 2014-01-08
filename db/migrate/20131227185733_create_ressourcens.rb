class CreateRessourcens < ActiveRecord::Migration
  def change
    create_table(:ressourcens) do |t|
      t.string :ressourcename, :limit =>45
      t.string :ressourcebeschreibung, :limit =>45
      t.string :ressourceart, :limit =>45
      t.string :ressourcekuerzel, :limit =>45
      t.boolean :ressourcegenerisch
      t.integer :ressourcemax

      t.timestamps
    end
  end
end

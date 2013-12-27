class CreateVerantwortlichkeitens < ActiveRecord::Migration
  def change
    create_table :Verantwortlichkeitens do |t|
      t.integer :ArbeitspaketID
      t.string :RessourceID, :limit =>45
      t.integer :Intensitaet
      t.string :Beschreibung, :limit =>45
      t.integer :Ressourcen_RessourcenID

      t.timestamps
    end
  end
end

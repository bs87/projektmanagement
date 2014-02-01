class CreateVerantwortlichkeitens < ActiveRecord::Migration
  def change
    create_table :verantwortlichkeitens do |t|
      t.integer :arbeitspaketid
      t.string :ressourceid, :limit =>45
      t.integer :intensitaet
      t.string :beschreibung, :limit =>45
      t.integer :ressourcen_ressourcenid

      t.timestamps
    end
  end
end

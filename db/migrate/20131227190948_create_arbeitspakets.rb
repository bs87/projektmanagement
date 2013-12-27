class CreateArbeitspakets < ActiveRecord::Migration
  def change
    create_table :Arbeitspakets do |t|
      t.string :Arbeitspaketname, :limit =>45
      t.string :Arbeitspaketbeschreibung, :limit =>45
      t.integer :Arbeitspaketverantwortlicher
      t.integer :Arbeitspaketbeginn
      t.integer :Arbeitspaketdauer
      t.integer :Arbeitspaketende
      t.integer :Arbeitspaketnummer
      t.string :Arbeitspaketziel, :limit =>45
      t.string :Arbeitspaketeingangsdokumente, :limit =>45
      t.string :Arbeitspaketausgangsdokumente, :limit =>45
      t.integer :AufgabenID
      t.integer :Verantwortlichkeiten_ArbeitsID
      t.string :Verantwortlichkeiten_RessourceID, :limit =>45

      t.timestamps
    end
  end
end

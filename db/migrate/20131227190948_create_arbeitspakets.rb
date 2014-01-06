class CreateArbeitspakets < ActiveRecord::Migration
  def change
    create_table :arbeitspakets do |t|
      t.string :arbeitspaketname, :limit =>45
      t.string :arbeitspaketbeschreibung, :limit =>45
      t.integer :arbeitspaketverantwortlicher
      t.date :arbeitspaketbeginn
      t.date :arbeitspaketdauer
      t.date :arbeitspaketende
      t.integer :arbeitspaketnr
      t.string :arbeitspaketziel, :limit =>45
        t.string :arbeitspaketkuerzel, :limit =>45
      t.string :arbeitspaketeingangsdokumente, :limit =>45
      t.string :arbeitspaketausgangsdokumente, :limit =>45
      t.integer :aufgabeid
      t.integer :verantwortlichkeiten_Arbeitsid
      t.string :verantwortlichkeiten_Ressourceid, :limit =>45

      t.timestamps
    end
  end
end

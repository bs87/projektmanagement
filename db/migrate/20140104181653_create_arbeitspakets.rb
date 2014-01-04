class CreateArbeitspakets < ActiveRecord::Migration
  def change
    create_table :arbeitspakets do |t|
      t.string :arbeitspaketname
      t.string :arbeitspaketbeschreibung
      t.string :arbeitspaketverantwortlicher
      t.date :arbeitspaketbeginn
      t.date :arbeitspaketdauer
      t.date :arbeitspaketende
      t.integer :arbeitspaketnr
      t.string :arbeitspaketkuerzel
      t.string :eingangsdokumente
      t.string :ausgangsdokumente
      t.integer :aufgabeid
      t.integer :verantwortlichkeitenid

      t.timestamps
    end
  end
end

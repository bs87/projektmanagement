class CreateAufgabens < ActiveRecord::Migration
  def change
    create_table :Aufgabens do |t|
      t.string :Aufgabenname, :limit =>45
      t.string :Aufgabenbeschreibung, :limit =>45
      t.integer :Aufgabenebene
      t.string :ProjektID, :limit =>45
      t.integer :Arbeitspaket_ArbeitspaketID

      t.timestamps
    end
  end
end

class CreateProjekts < ActiveRecord::Migration
  def change
    create_table :projekts do |t|
      t.string :Projektname
      t.integer :Projektleiter
      t.string :Projektstart
      t.string :Projektende
      t.string :Projektbeschreibung
      t.integer :Roadstops_RoadstopsID
      t.integer :Aufgaben_AufgabenID

      t.timestamps
    end
  end
end

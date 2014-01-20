class CreateProjekts < ActiveRecord::Migration
  def change
    create_table :projekts do |t|
      t.string :projektname
      t.string :projektleiter
      t.date :projektstart
      t.string :projektende
      t.string :projektbeschreibung
      t.integer :roadstops_roadstopsid
      t.integer :aufgaben_aufgabenid

      t.timestamps
    end
  end
end

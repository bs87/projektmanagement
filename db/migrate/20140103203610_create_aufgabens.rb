class CreateAufgabens < ActiveRecord::Migration
  def change
    create_table :aufgabens do |t|
      t.string :aufgabenname
      t.string :aufgabenbeschreibung
      t.integer :aufgabenrang
      t.integer :aufgabennr
      t.integer :projektsid

      t.timestamps
    end
  end
end

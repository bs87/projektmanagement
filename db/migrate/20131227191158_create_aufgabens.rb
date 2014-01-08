class CreateAufgabens < ActiveRecord::Migration
  def change
    create_table :aufgabens do |t|
      t.string :aufgabenname, :limit =>45
      t.string :aufgabenbeschreibung, :limit =>45
      t.integer :aufgabenrang
      t.integer :aufgabennr
      t.integer :projektsid
      t.timestamps
    end
  end
end

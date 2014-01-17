class CreateArbeitspaketvorgaengers < ActiveRecord::Migration
  def change
    create_table :arbeitspaketvorgaengers do |t|
      t.integer :apid
      t.integer :apvorgaengerid

      t.timestamps
    end
  end
end

class CreateProdukts < ActiveRecord::Migration
  def change
    create_table :produkts do |t|
      t.string :name
      t.string :typ
      t.integer :ap_id
      t.integer :kat_id

      t.timestamps
    end
  end
end

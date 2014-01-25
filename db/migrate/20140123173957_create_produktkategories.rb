class CreateProduktkategories < ActiveRecord::Migration
  def change
    create_table :produktkategories do |t|
      t.string :name
      t.integer :projekt_id
      t.integer :vorgaenger_id

      t.timestamps
    end
  end
end

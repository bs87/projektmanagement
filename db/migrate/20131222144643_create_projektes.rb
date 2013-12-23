class CreateProjektes < ActiveRecord::Migration
  def change
    create_table :projektes do |t|
      t.string :name
      t.string :status
      t.float :kosten
      t.date :projektstart
      t.date :projektende

      t.timestamps
    end
  end
end

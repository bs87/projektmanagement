class CreateRoadstops < ActiveRecord::Migration
  def change
    create_table :roadstops do |t|
      t.string :roadstopspart, :limit =>45
      t.integer :roadstopsdate
      t.integer :projektid

      t.timestamps
    end
  end
end

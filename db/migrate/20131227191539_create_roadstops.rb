class CreateRoadstops < ActiveRecord::Migration
  def change
    create_table :Roadstops do |t|
      t.string :Roadstopspart, :limit =>45
      t.integer :Roadstopsdate
      t.integer :ProjektID

      t.timestamps
    end
  end
end

class CreateRessourcefunctions < ActiveRecord::Migration
  def change
    create_table :ressourcefunctions do |t|
      t.string :name

      t.timestamps
    end
  end
end

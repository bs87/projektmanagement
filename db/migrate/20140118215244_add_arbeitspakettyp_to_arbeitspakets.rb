class AddArbeitspakettypToArbeitspakets < ActiveRecord::Migration
  def change
    add_column :arbeitspakets, :arbeitspakettyp, :string
  end
end

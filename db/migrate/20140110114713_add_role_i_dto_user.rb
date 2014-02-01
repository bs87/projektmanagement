class AddRoleIDtoUser < ActiveRecord::Migration
  def change
  	 add_column :users, :roleid, :integer
  end
end

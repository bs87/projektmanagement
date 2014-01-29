class Produktkategorie < ActiveRecord::Base
	attr_accessible :id, :name, :projekt_id, :vorgaenger_id
	  validates :name, presence: true

end

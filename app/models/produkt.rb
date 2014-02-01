class Produkt < ActiveRecord::Base
	attr_accessible :id, :name, :typ, :ap_id, :kat_id
	   validates :name, presence: true

end

class Produkt < ActiveRecord::Base
	attr_accessible :id, :name, :typ, :ap_id, :kat_id
end

class Arbeitspaketvorgaenger < ActiveRecord::Base
	attr_accessible :id, :apid, :apvorgaengerid
	belongs_to :arbeitspaket
end

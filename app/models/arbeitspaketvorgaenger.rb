class Arbeitspaketvorgaenger < ActiveRecord::Base
	attr_accessible :id, :apid, :apvorgaengerid
	belongs_to :arbeitspaket
		validates :apvorgaengerid,   presence: true

end

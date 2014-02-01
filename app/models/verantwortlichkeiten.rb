class Verantwortlichkeiten < ActiveRecord::Base
	attr_accessible :id, :arbeitspaketid, :ressourceid, :intensitaet, :beschreibung, :created_at, :updated_at
has_many :arbeitspaket
belongs_to :ressourcen 
  validates :intensitaet, presence: true

end
